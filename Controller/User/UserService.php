<?php
session_start();
require_once 'UserController.php';
if($_SERVER['REQUEST_METHOD'] == 'POST') {

    
    $jsonData = file_get_contents("php://input");
    $data = json_decode($jsonData, true);
    $action = $data['action'];
    switch($action) {
        case 'login':
            $email = $data['email'];
            $password = $data['password'];
            $userController = new UserController();
            $temp = $userController->login($email,$password);
            header('Content-Type: application/json');     
            if($temp['success']){
                $_SESSION['user'] = $temp; 
                echo json_encode($temp);
            }else{
                echo json_encode(array('success' => false,'message' =>"Đăng nhập thất bại"));
            }
           
          
            break;
        case 'register':
            $register = (new UserController())->registerCustomer($data);
            if($register['success']){
                $_SESSION['user'] = $register; 
                echo json_encode($register);
            }else{
                echo json_encode($register);
            }
            break;
            
        case 'addManger':{
            $addManger = (new UserController())->addManager($data);
            if($addManger['success']){
                $_SESSION['user'] = $addManger; 
                echo json_encode($addManger);
            }else{
                echo json_encode($addManger);
            }
            break;
           
            }
            case 'getAllUser':{
                $listAllUser=(new UserController)->getAllUser($page);
                echo json_encode($listAllUser);
                break;
            }
        }


        
        }
    
?>