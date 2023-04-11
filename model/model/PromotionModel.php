<?php 
require_once(__DIR__.'/../entity/Promotion.php');
require_once(__DIR__.'/../System/Database.php');

class PromotionModel {
    public $conn;

    public function __construct(){
        $this->conn = Database::getConnection();
    }

    // Phương thức lấy thông tin Promotion theo ID
    public function getPromotionByID($id) {
        $stmt = $this->conn->prepare("SELECT PromotionID, PromotionName, Description, StartTime, EndTime, Discount, Code FROM promotion WHERE PromotionID=:PromotionID");
        $stmt->bindParam(':PromotionID', $id);
        $stmt->setFetchMode(PDO::FETCH_CLASS,'Promotion');
        $stmt->execute();
        $Promotion = $stmt->fetchObject();
        if($Promotion!=null){
            echo json_encode(array("success"=>true,"Promotion"=>$Promotion));
        }else{
            echo json_encode(array("success"=>false,"error"=>"Promotion không tồn tại"));
        }
    }
    
    // Phương thức thêm mới một Promotion
    public function addPromotion(Promotion $Promotion){
        try{
            $stmt =$this->conn->prepare("INSERT INTO promotion (PromotionID, PromotionName, Description, StartTime, EndTime, Discount, Code) VALUES (:PromotionID, :Description, :StartTime, :PromotionName,:EndTime, :Discount, :Code)");
            $PromotionID = $this->createNewID();
            $PromotionName = $Promotion->get_PromotionName();
            $Description = $Promotion->get_Description();
            $StartTime = $Promotion->get_StartTime();
            $EndTime = $Promotion->get_EndTime();
            $Discount = $Promotion->get_Discount();
            $Code = $Promotion->get_Code();


            $stmt->bindParam(':PromotionID', $PromotionID);
            $stmt->bindParam(':PromotionName', $PromotionName);
            $stmt->bindParam(':Description', $Description);
            $stmt->bindParam(':StartTime', $StartTime);
            $stmt->bindParam(':EndTime', $EndTime);
            $stmt->bindParam(':Discount', $Discount);
            $stmt->bindParam(':Code', $Code);

            $stmt ->execute();
            echo json_encode(array("success"=>true));
        }catch(Exception $e){
            echo json_encode(array("success"=>false,"error"=>$e->getMessage()));
        }
    }
    // Phương thức xóa một Promotion theo ID
public function deletePromotion($id) {
    try {
        $stmt = $this->conn->prepare("DELETE FROM promotion WHERE PromotionID = :PromotionID");
        $stmt->bindParam(':PromotionID', $id);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Promotion không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}
// Phương thức cập nhật thông tin một Promotion
public function updatePromotion(Promotion $Promotion) {
    try {
        $stmt =$this->conn->prepare("UPDATE promotion SET PromotionName = :PromotionName, Description = :Description, StartTime = :StartTime, EndTime = :EndTime, Discount = :Discount, Code = :Code WHERE PromotionID=:PromotionID");
        $PromotionID = $Promotion->get_PromotionID();
        $PromotionName = $Promotion->get_PromotionName();
        $Description = $Promotion->get_Description();
        $StartTime = $Promotion->get_StartTime();
        $EndTime = $Promotion->get_EndTime();
        $Discount = $Promotion->get_Discount();
        $Code = $Promotion->get_Code();


        $stmt->bindParam(':PromotionID', $PromotionID);
        $stmt->bindParam(':PromotionName', $PromotionName);
        $stmt->bindParam(':Description', $Description);
        $stmt->bindParam(':StartTime', $StartTime);
        $stmt->bindParam(':EndTime', $EndTime);
        $stmt->bindParam(':Discount', $Discount);
        $stmt->bindParam(':Code', $Code);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Promotion không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}

    // Phương thức getAll cho Promotion
    public function getAllPromotion(){
        $stmt = $this->conn->prepare("SELECT PromotionID, PromotionName,  Description, StartTime, EndTime,  Discount, Code FROM promotion");
        $stmt->execute();
        $Promotions = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $Promotion = new Promotion($row['PromotionID'], $row['PromotionName'], $row['Description'], $row['StartTime'], $row['EndTime'], $row['Discount'], $row['Code']);
            $Promotions[] = $Promotion;
        }
        echo json_encode(array("success" => true, "list" => $Promotions));
    }
    
        // Phương thức sinh mã ID mới cho Promotion
        public function createNewID() {
            $query = "SELECT PromotionID FROM promotion ORDER BY CAST(RIGHT(PromotionID, LENGTH(PromotionID) - 2) AS UNSIGNED) DESC LIMIT 1";
            $result = $this->conn->query($query);
            $lastId = 0;
        
            if ($result->rowCount() > 0) {
                $lastId = intval(substr($result->fetchColumn(), 2));
            }
        
            $newId = "P" . ($lastId + 1);
            return $newId;
        }
    }
$temp = new Promotion('PromotionName 3', 'Description promotion 3', '2022-10-10 10:10:10', '2022-10-10 11:11:11', 40, 1,'P001');


echo (new PromotionModel())->getAllPromotion();
?>