<?php
require_once 'MovieController.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {

    
  
    $action = $_GET['action'];
    header('Content-Type: application/json');
    
    switch($action) {
        case 'getMoiveHot':
        $list =    (new MovieController)->getHotMovies();
        echo json_encode($list);
         break; 
        case 'getPremieredMovies':
            $page = $_GET['page'];
            $list =   (new MovieController)->getPremieredMovies($page);
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
        case 'getMovieByID':
            $movieid = $_GET['movieid'];
            $movie = (new MovieController)->getMovieByMovieID( $movieid);
          echo  json_encode($movie);
            break;
        default:
            echo json_encode(array("success" => false, "message" =>"Request không tồn tại"));
            break;
    }
}
if($_SERVER['REQUEST_METHOD'] == 'POST') { 
    $data = file_get_contents("php://input");
    
}
// if($_SERVER['REQUEST_METHOD'] == 'PUT') {

// }
if($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    $id = $_GET['id'];
    header('Content-Type: application/json');
    $result = (new MovieController)->deleteMovie($id);
    echo json_encode($result);
}
?>