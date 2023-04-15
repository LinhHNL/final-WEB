<?php 
require_once(__DIR__.'/../entity/MenuDetail.php');
require_once(__DIR__.'/../System/Database.php');

class MenuDetailModel {
    public $conn;

    public function __construct(){
        $this->conn = Database::getConnection();
    }

    // Phương thức lấy thông tin Menu theo ID
     // Phương thức lấy thông tin Menu theo ID
     public function getMenuDetailByBookingID($id) {
        $stmt = $this->conn->prepare("SELECT 
        Number,	
        Total,	
        BookingID ,
        ItemID	
        FROM menudetail WHERE BookingID=:BookingID");
        $stmt->bindParam(':BookingID', $id);
        $stmt->execute();
        $list = array();
      while($row = $stmt->fetch(\PDO::FETCH_ASSOC)){
            $menudetail = new MenuDetail($row['Number'], $row['Total'], $row['BookingID'], $row['ItemID']);
            $list[] = $menudetail;
        }
        return $list;
    }
  
    // Phương thức thêm mới một Menu
    public function addMenu(MenuDetail $menuDetail){
        try{
            $stmt =$this->conn->prepare("INSERT INTO menudetail (Number,Total,BookingID, ItemID) VALUES (:Number,:Total,:BookingID, :ItemID)");
            $ItemID = $menuDetail->get_ItemID();
            $number = $menuDetail->get_Number();
            $total = $menuDetail->get_Total();
            $BookingID = $menuDetail->get_BookingID();

            $stmt->bindParam(':Number', $number);
            $stmt->bindParam(':Total', $total);
            $stmt->bindParam(':ItemID', $ItemID);
            $stmt->bindParam(':BookingID', $BookingID);
            $stmt ->execute();
            echo json_encode(array("success"=>true));
        }catch(Exception $e){
            echo json_encode(array("success"=>false,"error"=>$e->getMessage()));
        }
    }
    // Phương thức xóa một Menu theo ID
public function deleteMenu($id) {
    try {
        $stmt = $this->conn->prepare("DELETE FROM menudetail WHERE BookingID = :BookingID");
        $stmt->bindParam(':BookingID', $id);
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
public function updateMenu(MenuDetail $menuDetail) {
    try {
        $stmt = $this->conn->prepare("UPDATE menudetail SET ItemID = :ItemID, Number = :Number, Total = :Total WHERE BookingID = :BookingID");
        $number = $menuDetail->get_Number();
        $total = $menuDetail->get_Total();

        $stmt->bindParam(':Number', $number);
        $stmt->bindParam(':Total', $total);
        
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

   

}
echo json_encode((new MenuDetailModel())->getMenuDetailByBookingID("B001"));

?>