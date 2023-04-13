<?php
require_once 'MovieController.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {

    
  
    $action = $_GET['action'];
    
    switch($action) {
        case 'getMoiveHot':
        $list =    (new MovieController)->getHotMovies();
        echo json_encode($list);
         break; 
        case 'getPremieredMovies':
            $page = $_GET['page'];
            $list =    (new MovieController)->getPremieredMovies($page);
            echo json_encode($list);
            break;
        case 'getUpcomingMovies':
            $page = $_GET['page'];
            $list =    (new MovieController)->getUpcomingMovies($page);
            echo json_encode($list);
            break;
        case 'getMoiveByGenres':
            $page = $_GET['page'];
            $genreid = $_GET['genreid'];
            $list =    (new MovieController)->getMovieByGenreID(  $genreid,$page);
            echo json_encode($list);
            break;
    }
}

?>