<?php
require_once 'GenreController.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {
      
    $jsonData = file_get_contents("php://input");
    $data = json_decode($jsonData, true);
    $action = $data['action'];
    switch ($action) {
        case 'getAll':
            $genres = (new GenreController())->getAllGenres();
            echo json_encode($genres);
            break;
    }
}
?>