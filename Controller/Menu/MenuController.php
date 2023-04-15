<?php 
require_once '../../model/model/MenuModel.php';
require_once '../../model/entity/Menu.php';
class MenuController {
    function getAllMenus($page) {
        return (new MenuModel())->getAllMenu($page);
    }
    function getMenuById($id) {
        return (new MenuModel())->getMenuByID($id);

    }
    function getMenuByStatus($page,$status) {
        return (new MenuModel())->getAllMenuByStatus($page,$status);

    }
    function addMenu($data){
      
        $Name = $data['Name'];
         $ImageURL =  $data['ImageURL'];
         $Price =  $data['Price'];
         $status =  $data['status'];
   
        return (new MenuModel())->addMenu(new Menu($Name, $ImageURL, $Price ,$status ));
    }
    function removeMenu($id){
        return (new MenuModel())->deleteMenu($id);

    }
    function updateMenu($data){
        $Name = $data['Name'];
        $ImageURL =  $data['ImageURL'];
        $Price =  $data['Price'];
        $ItemID =  $data['ItemID'];
        $status =  $data['status'];

        $Menu = new Menu($Name, $ImageURL, $Price, $status, $ItemID);
        return (new MenuModel())->updateMenu($Menu);

    }
}

?>