<?php 
require_once '../../model/model/MovieGenreModel.php';
class GenreController{
    public function getAllGenres(){
        $genres  = (new MovieGenreModel)->getGenreAll();
        return $genres;
    }
}
?>