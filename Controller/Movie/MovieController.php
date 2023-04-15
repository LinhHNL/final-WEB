<?php 
require_once '../../model/model/MovieModel.php';
require_once '../../model/model/MovieGenreModel.php';
require_once '../../model/model/ActorModel.php';
require_once '../../model/model/LanguageModel.php';
require_once '../../model/entity/Movie.php';
class MovieController{
    public function getPremieredMovies($page){
        $moives = (new MovieModel)->getPremieredMovies($page);
        foreach($moives as $Movie ){
            $movieID = $Movie->get_MovieID();
            // return $moives;
            $Movie->set_rating(10);
            $images = (new MovieImageModel())->getMoiveImageID($movieID);
            $obj = json_decode($images);
            $imagePaths = array();
           
            foreach ($obj->listImages as $movieImage) {
                $imagePaths[] = $movieImage->ImagePath;
            }
            $Movie->add_ListImage($imagePaths);
            $actors = (new ActorModel())->getActorOfMovie($movieID);
            $Movie->add_ListActor($actors);
            $genres = (new MovieGenreModel())->getGenreAllByMoiveID($movieID);
            $Movie->add_ListGenre($genres);
        }   return $moives;
    }
    public function getUpcomingMovies($page){
        $moives = (new MovieModel)->getUpcomingMovies($page);
        foreach($moives as $Movie ){
            $movieID = $Movie->get_MovieID();
            // return $moives;
            $Movie->set_rating(10);
            $images = (new MovieImageModel())->getMoiveImageID($movieID);
            $obj = json_decode($images);
            $imagePaths = array();
           
            foreach ($obj->listImages as $movieImage) {
                $imagePaths[] = $movieImage->ImagePath;
            }
            $Movie->add_ListImage($imagePaths);
            $actors = (new ActorModel())->getActorOfMovie($movieID);
            $Movie->add_ListActor($actors);
            $genres = (new MovieGenreModel())->getGenreAllByMoiveID($movieID);
            $Movie->add_ListGenre($genres);
        }   return $moives;
    }
       
    public function getMovieByGenreID($id,$page){
        $moives = (new MovieModel)->getMoviesByGenre($id,$page);
        foreach($moives as $Movie ){
            $movieID = $Movie->get_MovieID();
            // return $moives;
            $Movie->set_rating(10);
            $images = (new MovieImageModel())->getMoiveImageID($movieID);
            $obj = json_decode($images);
            $imagePaths = array(); 
            foreach ($obj->listImages as $movieImage) {
                $imagePaths[] = $movieImage->ImagePath;
            }
            $Movie->add_ListImage($imagePaths);
            $actors = (new ActorModel())->getActorOfMovie($movieID);
            $Movie->add_ListActor($actors);
            $genres = (new MovieGenreModel())->getGenreAllByMoiveID($movieID);
            $Movie->add_ListGenre($genres);
        }   return $moives;
    }
    public function getHotMovies(){
        $hotMovies = ((new MovieModel)->getHotMovies());
        
        foreach($hotMovies as $hotMovie ){
            $movieID = $hotMovie->get_MovieID();
            // return $hotMovies;
            $hotMovie->set_rating(10);
            $images = (new MovieImageModel())->getMoiveImageID($movieID);
            $obj = json_decode($images);
            $imagePaths = array();
           
            foreach ($obj->listImages as $movieImage) {
                $imagePaths[] = $movieImage->ImagePath;
            }
            $hotMovie->add_ListImage($imagePaths);
            $actors = (new ActorModel())->getActorOfMovie($movieID);
            $hotMovie->add_ListActor($actors);
            $genres = (new MovieGenreModel())->getGenreAllByMoiveID($movieID);
            $hotMovie->add_ListGenre($genres);
        }
        return $hotMovies;
    }
    public function getMovieByMovieID($movieID){
        $result = (new MovieModel())->getMovieById($movieID);
        if($result['success']){
            $movie = $result['movie'];
            $movie->set_rating(10);
            $movieID = $movie->get_MovieID();
            $images = (new MovieImageModel())->getMoiveImageID($movieID);
            $obj = json_decode($images);
            $imagePaths = array();
           
            foreach ($obj->listImages as $movieImage) {
                $imagePaths[] = $movieImage->ImagePath;
            }
            $movie->add_ListImage($imagePaths);
            $actors = (new ActorModel())->getActorOfMovie($movieID);
            $movie->add_ListActor($actors);
            $genres = (new MovieGenreModel())->getGenreAllByMoiveID($movieID);
            $movie->add_ListGenre($genres);
            return array("success" => true, "movie" => $movie);
        }else{
            return array("success" => false, "message" =>"Movie không tồn tại");
        }
    }
    public function deleteMovie($movieid){
        return (new MovieModel)->deleteMovie($movieid);

    }
    // public function addMovie($data){
    //     $MovieName=$data['MovieName'];
    //     $Year=$data['Year'];
    //     $Director=$data['Director'];
    //     $Premiere=$data['Premiere'];
    //     $URLTrailer=$data['URLTrailer'];
    //     $Time=$data['Time'];
    //     $StudioID=$data['StudioID'];
    //     $LanguageID=$data['LanguageID'];
    //     $story=$data['story'];
    //     $movie  = new Movie($MovieName, $year, $Director, $Premiere, $URLTrailer, $Time, $StudioID, $LanguageID,$story);
       
    //     $decoded_file = base64_decode($data->file);
    //     $filename = "../../images/uploads/" . $MovieName.time(). ".jpg";
    //     file_put_contents($filename, $decoded_file);

    //     $result = (new MovieModel())->addMoive($movie);
    
}

?>