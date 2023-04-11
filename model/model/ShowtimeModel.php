<?php 
require_once(__DIR__.'/../entity/Showtime.php');
require_once(__DIR__.'/../System/Database.php');

class ShowtimeModel {
    public $conn;

    public function __construct(){
        $this->conn = Database::getConnection();
    }

    // Phương thức lấy thông tin Showtime theo ID
    public function getShowtimeByID($id) {
        $stmt = $this->conn->prepare("SELECT ShowtimeID, Price, StartTime, EndTime, MovieID, RoomID, FormatID FROM showtime WHERE ShowtimeID=:ShowtimeID");
        $stmt->bindParam(':ShowtimeID', $id);
        $stmt->setFetchMode(PDO::FETCH_CLASS,'Showtime');
        $stmt->execute();
        $Showtime = $stmt->fetchObject();
        if($Showtime!=null){
            echo json_encode(array("success"=>true,"Showtime"=>$Showtime));
        }else{
            echo json_encode(array("success"=>false,"error"=>"Showtime không tồn tại"));
        }
    }
    
    // Phương thức thêm mới một Showtime
    public function addShowtime(Showtime $Showtime){
        try{
            $stmt =$this->conn->prepare("INSERT INTO showtime (ShowtimeID, Price, StartTime, EndTime, MovieID, RoomID, FormatID) VALUES (:ShowtimeID, :StartTime, :EndTime, :Price, :MovieID, :RoomID, :FormatID)");
            $ShowtimeID = $this->createNewID();
            $Price = $Showtime->get_Price();
            $StartTime = $Showtime->get_StartTime();
            $EndTime = $Showtime->get_EndTime();
            $MovieID = $Showtime->get_MovieID();
            $RoomID = $Showtime->get_RoomID();
            $FormatID = $Showtime->get_FormatID();


            $stmt->bindParam(':ShowtimeID', $ShowtimeID);
            $stmt->bindParam(':Price', $Price);
            $stmt->bindParam(':StartTime', $StartTime);
            $stmt->bindParam(':EndTime', $EndTime);
            $stmt->bindParam(':MovieID', $MovieID);
            $stmt->bindParam(':RoomID', $RoomID);
            $stmt->bindParam(':FormatID', $FormatID);

            $stmt ->execute();
            echo json_encode(array("success"=>true));
        }catch(Exception $e){
            echo json_encode(array("success"=>false,"error"=>$e->getMessage()));
        }
    }
    // Phương thức xóa một Showtime theo ID
public function deleteShowtime($id) {
    try {
        $stmt = $this->conn->prepare("DELETE FROM showtime WHERE ShowtimeID = :ShowtimeID");
        $stmt->bindParam(':ShowtimeID', $id);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Showtime không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}
// Phương thức cập nhật thông tin một Showtime
public function updateShowtime(Showtime $Showtime) {
    try {
        $stmt =$this->conn->prepare("UPDATE showtime SET Price = :Price, FormatID = :FormatID, StartTime = :StartTime, EndTime = :EndTime, MovieID = :MovieID, RoomID = :RoomID WHERE ShowtimeID=:ShowtimeID");
        $ShowtimeID = $Showtime->get_ShowtimeID();
        $Price = $Showtime->get_Price();
        $StartTime = $Showtime->get_StartTime();
        $EndTime = $Showtime->get_EndTime();
        $MovieID = $Showtime->get_MovieID();
        $RoomID = $Showtime->get_RoomID();
        $FormatID = $Showtime->get_FormatID();


        $stmt->bindParam(':ShowtimeID', $ShowtimeID);
        $stmt->bindParam(':Price', $Price);
        $stmt->bindParam(':StartTime', $StartTime);
        $stmt->bindParam(':EndTime', $EndTime);
        $stmt->bindParam(':MovieID', $MovieID);
        $stmt->bindParam(':RoomID', $RoomID);
        $stmt->bindParam(':FormatID', $FormatID);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Showtime không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}


    // Phương thức getAll cho Showtime
    public function getAllShowtime(){
        $stmt = $this->conn->prepare("SELECT ShowtimeID, Price,  MovieID, StartTime, EndTime,  RoomID, FormatID FROM showtime");
        $stmt->execute();
        $Showtimes = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $Showtime = new Showtime($row['ShowtimeID'], $row['Price'], $row['MovieID'], $row['StartTime'], $row['EndTime'], $row['RoomID'], $row['FormatID']);
            $Showtimes[] = $Showtime;
        }
        echo json_encode(array("success" => true, "list" => $Showtimes));
    }
    
        // Phương thức sinh mã ID mới cho Showtime
        public function createNewID() {
            $query = "SELECT ShowtimeID FROM showtime ORDER BY CAST(RIGHT(ShowtimeID, LENGTH(ShowtimeID) - 2) AS UNSIGNED) DESC LIMIT 1";
            $result = $this->conn->query($query);
            $lastId = 0;
        
            if ($result->rowCount() > 0) {
                $lastId = intval(substr($result->fetchColumn(), 2));
            }
        
            $newId = "SH" . ($lastId + 1);
            return $newId;
        }
}
$temp = new Showtime(10000, '2022-10-10 10:10:10','M001', '2022-10-10 11:11:11', 'RO001', 'F001', 'SH001');


echo (new ShowtimeModel())->getAllShowtime();
?>