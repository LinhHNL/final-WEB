<?php 
require_once (__DIR__.'/entity/Booking.php');
require_once (__DIR__.'/System/Database.php');
class BookingModel {
    public $conn;
    public function __construct(){
        $this->conn = Database::getConnection();
    }
    private function createNewID(){
        $query = "SELECT BookingID FROM Booking ORDER BY CAST(RIGHT(BookingID, LENGTH(BookingID) - 2) AS UNSIGNED) DESC LIMIT 1";
        $result = $this->conn->query($query);
        $lastId = 0;
    
        if ($result->rowCount() > 0) {
            $lastId = intval(substr($result->fetchColumn(), 2));
        }
    
        $newId = "BK" . ($lastId + 1);
        return $newId;
    }
    
    public function getAllBookings(){
        $stmt = $this->conn->prepare("Select 
        BookingID	,
        NumberOfTickets	,
        TotalPrice	,
        BookingTime	,
      	
        Voucher from Booking");

        $stmt ->execute();
        $booking = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
             $booking = new Booking($row['NumberOfTickets'],$row['BookingTime'],$row['TotalPrice'],$row['Voucher'],$row['BookingID']);
             $bookings[] = $booking;
        }
        echo json_encode(array("success"=>true, "studios"=>$bookings));

    }
    function getBookingByID($Bookingid){
        $stmt = $this->conn->prepare("SELECT* FROM Booking WHERE BookingID = :Bookingid");
        $stmt ->bindParam(':Bookingid',$Bookingid);
        $stmt ->setFetchMode(PDO::FETCH_CLASS,'Booking');
        $stmt ->execute();
        $booking = $stmt->fetchObject();
        if($booking!=null) {
        echo json_encode(array('success' => true, 'Booking'=>$booking));
        }else{
        echo json_encode(array('success' => false,'message'=>"Booking not found"));

        }

   }
   function addBooking(Booking $booking){
   try{ $stmt = $this->conn->prepare("INSERT INTO Booking VALUES(:id,:numberticket,:total,:datetime,:voucher)");
    $id = $this->createNewID();
    $numberticket = $booking->get_NumberOfTickets();
    $total = $booking->get_TotalPrice();
    $datetime = $booking->get_BookingTime();
    $voucher = $booking->get_Voucher();
    $stmt->bindParam(":id",$id);
    $stmt->bindParam(":numberticket",$numberticket);
    $stmt->bindParam(":total",$total);
    $stmt->bindParam(":datetime",$datetime);
    $stmt->bindParam(":voucher",$voucher);
    $stmt ->execute();
          
    echo json_encode(array("Success"=>true,"message"=>"Thêm thành công"));
}catch(Exception $e){

    echo   json_encode(array("Success"=>false,"error"=>$e->getMessage()));
    
    
         
    }} 
    function deleteBooking($id){
        try{
            $stmt = $this->conn->prepare("DELETE FROM Booking WHERE BookingID = :id");
            $stmt ->bindParam(":id",$id);
            $stmt ->execute();
            if ($stmt->rowCount() > 0) {
                 echo json_encode(array("success" => true));
             } else {
                 echo json_encode(array("success" => false, "error" => "Booking không tồn tại"));
             
       }}catch(EXception $e)
{
  echo json_encode(array("success" => false, "error" => $e->getMessage()));

       }
    } 
   
    function updateBooking(Booking $booking){
        try{ 
            $stmt = $this->conn->prepare("UPDATE Booking SET NumberOfTickets=:numberticket, TotalPrice=:total, Voucher=:voucher WHERE BookingID=:id");
            $id = $booking->get_BookingID();
            $numberticket = $booking->get_NumberOfTickets();
            $total = $booking->get_TotalPrice();
            $voucher = $booking->get_Voucher();
            $stmt->bindParam(":id",$id);
            $stmt->bindParam(":numberticket",$numberticket);
            $stmt->bindParam(":total",$total);
            $stmt->bindParam(":voucher",$voucher);
            $stmt ->execute();
                   
            if ($stmt->rowCount() > 0) {
                echo json_encode(array("success" => true));
            } else {
                echo json_encode(array("success" => false, "error" => "Booking không tồn tại"));
            }
        } catch(Exception $e){
            echo json_encode(array("Success"=>false,"error"=>$e->getMessage()));
        }
    }
    
    }
    $temp = new Booking(5,"2022-12-01 00:00:00",12312,"","B002");
    (new BookingModel())->getBookingByID("B002");
?>