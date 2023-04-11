<?php 
require_once(__DIR__.'/../entity/Menu.php');
require_once(__DIR__.'/../System/Database.php');

class MenuModel {
    public $conn;

    public function __construct(){
        $this->conn = Database::getConnection();
    }

    // Phương thức lấy thông tin Menu theo ID
    public function getMenuByID($id) {
        $stmt = $this->conn->prepare("SELECT ItemID, Name,  Price, ImageURL FROM menu WHERE ItemID=:ItemID");
        $stmt->bindParam(':ItemID', $id);
        $stmt->setFetchMode(PDO::FETCH_CLASS,'Menu');
        $stmt->execute();
        $menu = $stmt->fetchObject();
        if($menu!=null){
            echo json_encode(array("success"=>true,"menu"=>$menu));
        }else{
            echo json_encode(array("success"=>false,"error"=>"Menu không tồn tại"));
        }
    }
  
    // Phương thức thêm mới một Menu
    public function addMenu(Menu $Menu){
        try{
            $stmt =$this->conn->prepare("INSERT INTO menu (ItemID, Name,  Price, ImageURL) VALUES (:ItemID, :Name, :Price, :ImageURL)");
            $ItemID = $this->createNewID();
            $Name = $Menu->get_Name();
            $Price = $Menu->get_Price();
            $ImageURL = $Menu->get_ImageURL();

            $stmt->bindParam(':ItemID', $ItemID);
            $stmt->bindParam(':Name', $Name);
            $stmt->bindParam(':Price', $Price);
            $stmt->bindParam(':ImageURL', $ImageURL);
            $stmt ->execute();
            echo json_encode(array("success"=>true));
        }catch(Exception $e){
            echo json_encode(array("success"=>false,"error"=>$e->getMessage()));
        }
    }
    // Phương thức xóa một Menu theo ID
public function deleteMenu($id) {
    try {
        $stmt = $this->conn->prepare("DELETE FROM menu WHERE ItemID = :ItemID");
        $stmt->bindParam(':ItemID', $id);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Menu không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}
// Phương thức cập nhật thông tin một Menu
public function updateMenu(Menu $Menu) {
    try {
        $stmt = $this->conn->prepare("UPDATE menu SET Name = :Name, Price = :Price, ImageURL = :ImageURL WHERE ItemID = :ItemID");
        $id = $Menu->get_ItemID();
        $Name = $Menu->get_Name();
        $Price = $Menu->get_Price();
        $ImageURL = $Menu->get_ImageURL();

        $stmt->bindParam(':ItemID', $id);
        $stmt->bindParam(':Name', $Name);
        $stmt->bindParam(':Price', $Price);    
        $stmt->bindParam(':ImageURL', $ImageURL);
        
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Menu không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}

    // Phương thức getAll cho Menu
    public function getAllMenu(){
        $stmt = $this->conn->prepare("SELECT ItemID, Name,  Price, ImageURL FROM menu");
        $stmt->execute();
        $Menus = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $Menu = new Menu($row['ItemID'], $row['Name'], $row['Price'], $row['ImageURL']);
            $Menus[] = $Menu;
        }
        echo json_encode(array("success" => true, "list" => $Menus));
    }
    
        // Phương thức sinh mã ID mới cho Menu
        public function createNewID() {
            $query = "SELECT ItemID FROM Menu ORDER BY CAST(RIGHT(ItemID, LENGTH(ItemID) - 2) AS UNSIGNED) DESC LIMIT 1";
            $result = $this->conn->query($query);
            $lastId = 0;
        
            if ($result->rowCount() > 0) {
                $lastId = intval(substr($result->fetchColumn(), 2));
            }
        
            $newId = "I" . ($lastId + 1);
            return $newId;
        }

}
$temp = new Menu('Name item 3', 'ImageURL3', 40000, 'I001');


echo (new MenuModel())->getAllMenu();
?>