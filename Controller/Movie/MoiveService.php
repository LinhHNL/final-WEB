<?php
require_once 'MovieController.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {

    
    $jsonData = file_get_contents("php://input");
    $data = json_decode($jsonData, true);
    $action = $data['action'];
    
    switch($action) {
        case 'getMoiveHot':
        $list =    (new MovieController)->getHotMovies();
        echo json_encode($list);
         break; 
        case 'getPremieredMovies':
            $page = $data['page'];
            $list =    (new MovieController)->getPremieredMovies($page);
            echo json_encode($list);
            break;
        case 'getUpcomingMovies':
            $page = $data['page'];
            $list =    (new MovieController)->getUpcomingMovies($page);
            echo json_encode($list);
            break;
        case 'getMoiveByGenres':
            $page = $data['page'];
            $genreid = $data['genreid'];
            $list =    (new MovieController)->getMovieByGenreID(  $genreid,$page);
            echo json_encode($list);
            break;
    }
}
?>