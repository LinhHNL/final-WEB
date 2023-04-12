<?php
require_once 'GenreController.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {
      
  
    $action = $_GET['action'];
    switch ($action) {
        case 'getAll':
            $genres = (new GenreController())->getAllGenres();
            echo json_encode($genres);
            break;
    }
}
?>