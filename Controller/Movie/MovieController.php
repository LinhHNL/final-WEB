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
        }   
        return $moives;
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
   
    
}

?>