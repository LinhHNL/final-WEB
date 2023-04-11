<?php
require_once(__DIR__.'/../entity/Movie.php');
require_once(__DIR__.'/../System/Database.php'); 
require_once(__DIR__.'/LanguageModel.php');
require_once(__DIR__.'/MovieGenreModel.php');
require_once(__DIR__.'/ActorModel.php');
require_once(__DIR__.'/StudioModel.php');
require_once(__DIR__.'/MovieImageModel.php');

class MovieModel{
    public $conn;
    
    public function __construct() {
        $this->conn = Database::getConnection();
    }
    public function getMovieById($id) {
        $sql = "SELECT MovieID, MovieName, Director, Year, Premiere, URLTrailer, Time, StudioID, LanguageID FROM movie WHERE MovieID = :id";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        if($result) {
            $row = new Movie(
                $result['MovieName'],
                $result['Year'],
                $result['Director'],
                $result['Premiere'],
                $result['URLTrailer'],
                $result['Time'],
                $result['StudioID'],
                $result['LanguageID'],
                $result['MovieID']
            );
            return array("success"=>true,"movie"=>$row);
        } else {
            return array("success" => false, "message" => "Không tìm thấy phim với ID này");
        }
    }
    
    
    public function getMoviesAll($page) {
        $page = intval($page); 
        $number = 12;
        $offset = ($page - 1) * $number;
        $sql = "SELECT 
            MovieID,
            MovieName,
            Director,
            Year,
            Premiere,
            URLTrailer,
            Time,
            StudioID,
            LanguageID 
        FROM `movie` 
        ORDER BY CAST(RIGHT(MovieID, LENGTH(MovieID) - 2) AS UNSIGNED) DESC 
        LIMIT $offset,$number";
        $stmt = $this->conn->prepare($sql);
        
        $stmt->execute();
        $listmovie = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $temp = new Movie(
                $row['MovieName'],
                $row['Year'],
                $row['Director'],
                $row['Premiere'],
                $row['URLTrailer'],
                $row['Time'],
                $row['StudioID'],
                $row['LanguageID'],
                $row['MovieID']
            );
          
            $listmovie[] = $temp;
        }
        return ( $listmovie);
    }
    
    private function createNewID(){
        $query = "SELECT MovieID FROM movie ORDER BY CAST(RIGHT(MovieID, LENGTH(MovieID) - 2) AS UNSIGNED) DESC LIMIT 1";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $lastId = 0;
    
        if ($stmt->rowCount() > 0) {
            $lastId = intval(substr($stmt->fetchColumn(), 2));
        }
    
        $newId = "MV" . ($lastId + 1);
        return $newId;
    }
    public function getPremieredMovies($page) {
        $page = intval($page); 
        $number = 12;
        $offset = ($page - 1) * $number;
        $sql = "SELECT 
            MovieID,
            MovieName,
            Director,
            Year,
            Premiere,
            URLTrailer,
            Time,
            StudioID,
            LanguageID 
        FROM `movie` 
        WHERE Premiere <= NOW() -- chỉ lấy những bộ phim đã được khởi chiếu
        ORDER BY CAST(RIGHT(MovieID, LENGTH(MovieID) - 2) AS UNSIGNED) DESC 
        LIMIT $offset,$number";
        $stmt = $this->conn->prepare($sql);
        
        $stmt->execute();
        $listmovie = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $temp = new Movie(
                $row['MovieName'],
                $row['Year'],
                $row['Director'],
                $row['Premiere'],
                $row['URLTrailer'],
                $row['Time'],
                $row['StudioID'],
                $row['LanguageID'],
                $row['MovieID']
            );
          
            $listmovie[] = $temp;
        }
        return ( $listmovie);
    }
    public function getUpcomingMovies($page) {
        $page = intval($page); 
        $number = 12;
        $offset = ($page - 1) * $number;
        $sql = "SELECT 
            MovieID,
            MovieName,
            Director,
            Year,
            Premiere,
            URLTrailer,
            Time,
            StudioID,
            LanguageID 
        FROM `movie` 
        WHERE Premiere > NOW() -- chỉ lấy những bộ phim đã được khởi chiếu
        ORDER BY CAST(RIGHT(MovieID, LENGTH(MovieID) - 2) AS UNSIGNED) DESC 
        LIMIT $offset,$number";
        $stmt = $this->conn->prepare($sql);
        
        $stmt->execute();
        $listmovie = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $temp = new Movie(
                $row['MovieName'],
                $row['Year'],
                $row['Director'],
                $row['Premiere'],
                $row['URLTrailer'],
                $row['Time'],
                $row['StudioID'],
                $row['LanguageID'],
                $row['MovieID']
            );
          
            $listmovie[] = $temp;
        }
        return ( $listmovie);
    }
    public function getHotMovies() {
     

    
        $sql = "SELECT 
            m.MovieID,
            m.MovieName,
            m.Director,
            m.Year,
            m.Premiere,
            m.URLTrailer,
            m.Time,
            s.StudioName,
            l.LanguageName
        FROM `movie` m
        INNER JOIN `studio` s ON m.StudioID = s.StudioID
        INNER JOIN `language` l ON m.LanguageID = l.LanguageID
        ORDER BY CAST(RIGHT(m.MovieID, LENGTH(m.MovieID) - 2) AS UNSIGNED)  DESC 
        LIMIT 5";
    
        $stmt = $this->conn->prepare($sql);
    
        $stmt->execute();
        $listmovie = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $temp = new Movie(
                $row['MovieName'],
                $row['Year'],
                $row['Director'],
                $row['Premiere'],
                $row['URLTrailer'],
                $row['Time'],
                $row['StudioName'], // thêm thuộc tính tên của studio
                $row['LanguageName'], // thêm thuộc tính tên của ngôn ngữ
                $row['MovieID']
            );
    
            $listmovie[] = $temp;

        }
        return ($listmovie);
    }
    public function getMoviesByGenre($genre, $page = 1 ) {
        $number_page = 12;
        $genre = htmlspecialchars(strip_tags($genre)); // Chống SQL injection
        $sql = "SELECT 
                    m.MovieID,
                    m.MovieName,
                    m.Director,
                    m.Year,
                    m.Premiere,
                    m.URLTrailer,
                    m.Time,
                    m.StudioID,
                    m.LanguageID 
                FROM 
                    movie m
                    INNER JOIN moviegenre mg ON m.MovieID = mg.MovieID
                    INNER JOIN genre g ON mg.GenreID = g.GenreID
                WHERE 
                    m.Premiere <= NOW() AND
                    g.GenreName = :genre
                ORDER BY 
                    m.Premiere DESC
                LIMIT :limit OFFSET :offset";
        $limit = $number_page;
        $offset = ($page - 1) * $number_page;
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(':genre', $genre);
        $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
        $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
        $stmt->execute();
        $listmovie = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $temp = new Movie(
                $row['MovieName'],
                $row['Year'],
                $row['Director'],
                $row['Premiere'],
                $row['URLTrailer'],
                $row['Time'],
                $row['StudioID'],
                $row['LanguageID'],
                $row['MovieID']
            );
            $listmovie[] = $temp;
        }
        return $listmovie;
    
    }
    public function addMoive(Movie $moive){
        try {
            $stmt = $this->conn->prepare("INSERT INTO `movie`(`MovieID`, `MovieName`, `Director`, `Year`, `Premiere`, `URLTrailer`, `Time`, `StudioID`, `LanguageID`) 
            VALUES (:MovieID, :MovieName, :Director, :Year, :Premiere, :URLTrailer, :Time, :StudioID, :LanguageID)");
            $id = $this->createNewID();
            $moiveName = $moive->get_MovieName();
            $Diretor = $moive->get_Director();
            $year = $moive->get_Year(); 
            $premiere = $moive->get_Premiere(); 
            $urltrailer = $moive->get_URLTrailer();
            $time = $moive->get_Time();
            $studioid = $moive->get_StudioID(); 
            $languageid = $moive->get_LanguageID();
            $stmt->bindParam(':MovieID', $id);
            $stmt->bindParam(':MovieName', $moiveName);
            $stmt->bindParam(':Director', $Diretor);
            $stmt->bindParam(':Year', $year);
            $stmt->bindParam(':Premiere', $premiere);
            $stmt->bindParam(':URLTrailer', $urltrailer);
            $stmt->bindParam(':Time', $time);
            $stmt->bindParam(':StudioID', $studioid);
            $stmt->bindParam(':LanguageID', $languageid);
    
            $stmt->execute();
            if($stmt ->rowCount()>0){
                return (array("success" => true));
            }else{
                return (array("success" => false, "message" => "Could not add movie to database"));
            }
        } catch(PDOException $e) {
            return (array("success" => false, "message" => "Error: " . $e->getMessage()));
        }
    }
    
    public function searchMovie($search) {
        $search = "%{$search}%";
        $stmt = $this->conn->prepare("SELECT 
            MovieID,
            MovieName,
            Director,
            Year,
            Premiere,
            URLTrailer,
            Time,
            StudioID,
            LanguageID 
        FROM `movie`
        WHERE `MovieName` LIKE :search 
        ORDER BY `MovieID` DESC");
        $stmt->bindParam(':search', $search);
        $stmt->execute();
        
        $listmoive = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $listmoive[] = new Movie(
                $row['MovieName'],
                $row['Year'],
                $row['Director'],
                $row['Premiere'],
                $row['URLTrailer'],
                $row['Time'],
                
                $row['StudioID'],
                $row['LanguageID'],
                $row['MovieID']
            );
        }
        return (array("listmoive" => $listmoive));
    }
    
    public function deleteMovie($id){
        try {
            $stmt = $this->conn->prepare("DELETE FROM `movie` WHERE `MovieID` = :MovieID");
            $stmt->bindParam(':MovieID', $id);
            $stmt->execute();
            if($stmt->rowCount()>0){
                return (array("success" => true));
            }else{
                return (array("success" => false,"message" => "Xóa thất bại"));
            }
            
        }catch(Exception $e){
            return (array("success" => false,"error" => $e->getMessage()));
            
        }
    }
    public function updateMovie(Movie $movie){
        try {
            $stmt = $this->conn->prepare("UPDATE `movie` SET `MovieName`=:MovieName, `Director`=:Director, `Year`=:Year, `Premiere`=:Premiere, `URLTrailer`=:URLTrailer, `Time`=:Time, `StudioID`=:StudioID, `LanguageID`=:LanguageID WHERE `MovieID`=:MovieID");
            $id = $movie->get_MovieID();
            $movieName = $movie->get_MovieName();
            $director = $movie->get_Director();
            $year = $movie->get_Year(); 
            $premiere = $movie->get_Premiere(); 
            $urltrailer = $movie->get_URLTrailer();
            $time = $movie->get_Time();
            $studioid = $movie->get_StudioID(); 
            $languageid = $movie->get_LanguageID();
            $stmt->bindParam(':MovieID', $id);
            $stmt->bindParam(':MovieName', $movieName);
            $stmt->bindParam(':Director', $director);
            $stmt->bindParam(':Year', $year);
            $stmt->bindParam(':Premiere', $premiere);
            $stmt->bindParam(':URLTrailer', $urltrailer);
            $stmt->bindParam(':Time', $time);
            $stmt->bindParam(':StudioID', $studioid);
            $stmt->bindParam(':LanguageID', $languageid);
    
            $stmt->execute();
            if($stmt ->rowCount()>0){
                return (array("success" => true));
            }else{
                return (array("success" => false,"message" => "Thêm thất bại"));
            }
            
        }catch(Exception $e){
            return (array("success" => false,"error" => $e->getMessage()));
            
        }
    }
    
}

?>
