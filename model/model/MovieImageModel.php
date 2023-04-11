<?php
require_once(__DIR__.'/../entity/MovieImage.php');
require_once(__DIR__.'/../System/Database.php');
class MovieImageModel{
    private $conn; 
    public function __construct(){
        $this->conn = Database::getConnection();
    }
    private function createNewImageID(){
        $query = "SELECT ImageID FROM movieimage ORDER BY CAST(RIGHT(ImageID, LENGTH(ImageID) - 2) AS UNSIGNED) DESC LIMIT 1";
        $result = $this->conn->query($query);
        $lastId = 0;
    
        if ($result->rowCount() > 0) {
            $lastId = intval(substr($result->fetchColumn(), 2));
        }
    
        $newId = "MI" . ($lastId + 1);
        return $newId;
    }
    public function deleteImage( $movieImageid){
        try {
            $stmt = $this->conn->prepare("DELETE FROM movieimage where ImageID = $movieImageid"); 
            $stmt->execute();
            if ($stmt->rowCount() > 0) {
                return json_encode(array("success" => true));
            } else {
                return json_encode(array("success" => false, "error" => "image không tồn tại"));
        }}catch(Exception $e){
            return json_encode(array("success" => false, "message" => $e->getMessage()));
        }
    }

    public function getMoiveImageID($id){
   
        $stmt = $this->conn->prepare("SELECT ImageID, MovieID,Description , ImagePath FROM movieimage WHERE MovieID = :id");
        $stmt->bindParam(":id", $id);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        $stmt->execute();
        $images  = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $image = new MovieImage($row['ImagePath'], $row['MovieID'], $row['Description'],$row['ImageID']);
            $images[] = $image;
        }
        return json_encode(array("listImages" => $images));
       
    }
    public function uppdateImageMoive(MovieImage $moiveimage){
        try {   
        $stmt = $this->conn ->prepare("UPDATE movieimage SET ImagePath = :imagePath, MovieID = :movie , Description = :description where MovieID = :movieID");
        $id = $moiveimage->get_ImageID();
        $ImagePath = $moiveimage->get_ImagePath(); 
        $movie = $moiveimage->get_MovieID(); 
        $description = $moiveimage->get_Description();
        $stmt->bindParam(":imagePath", $ImagePath);
        $stmt->bindParam(":movie", $movie);
        $stmt -> bindParam(":description", $description);
        $stmt -> bindParam(":movieID", $id);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            return json_encode(array("success" => true));
        } else {
            return json_encode(array("success" => false, "error" => "image không tồn tại"));
        }} catch(Exception $e){
            return json_encode(array("success" => false, "message" => $e->getMessage()));
        }
        }
    
    public function addMoiveImage(MovieImage $movieImage){
        try {
            $stmt = $this->conn->prepare("INSERT INTO movieimage (MovieID, Description, ImagePath,ImageID) VALUES(:movieID, :description,:ImagePath, :ImageID)");
            $id = $this ->createNewImageID();
            $moiveid = $movieImage ->get_MovieID();
            $description = $movieImage ->get_Description();
            $image = $movieImage->get_ImageID();
            $stmt->bindParam(":movieID", $moiveid);
            $stmt->bindParam(":description", $description);
            $stmt -> bindParam(":ImagePath", $image );
            $stmt -> bindParam(":ImageID", $id );
            $stmt ->execute();
            if ($stmt->rowCount() > 0) {
                return json_encode(array("success" => true));
            } else {
                return json_encode(array("success" => false, "error" => "Thêm thất bại "));
            }

        }catch(Exception $e){ 
            return json_encode(array("success"=>true,"error" => $e->getMessage()));
        }
    }
}

?>