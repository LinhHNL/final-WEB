<?php
require_once(__DIR__.'/../entity/Ticket.php');
require_once(__DIR__.'/../System/Database.php');
class TicketModel{
    private $db; 
    public function __construct(){
        $this->db = Database::getConnection();
    }
    private function createNewID(){
        $query = "SELECT TicketID FROM  Ticket ORDER BY CAST(RIGHT(TicketID, LENGTH(TicketID) - 2) AS UNSIGNED) DESC LIMIT 1";
        $result = $this->db->query($query);
        $lastId = 0;
    
        if ($result->rowCount() > 0) {
            $lastId = intval(substr($result->fetchColumn(), 2));
        }
    
        $newId = "TK" . ($lastId + 1);
        return $newId;
    }
    public function addTicket(Ticket $ticket){
        try {
            $stmt = $this->db->prepare("INSERT INTO Ticket(TicketID,ShowTimeID,SeatID,Status) VALUES(:TicketID,:ShowTimeID,:SeatID,:Status)");
            $id = $this->createNewID();
            $ShowTimeID = $ticket -> get_ShowtimeID();
            $SeatID = $ticket -> get_SeatID();
            $Status = $ticket -> getStatus();
            $stmt->bindParam(':TicketID',$id);
            $stmt->bindParam(':ShowTimeID',$ShowTimeID);            $stmt->bindParam(':SeatID',$SeatID);            $stmt->bindParam(':Status',$Status);
            $stmt->execute();
            
        }catch(Exception $e){
        return (array('success' => false, 'message' => $e->getMessage()));
        }
    }
    public function deleteTicket(Ticket $ticket){
        try {
            $stmt = $this->db->prepare("DELETE FROM Ticket WHERE TicketID=:TicketID");
            $stmt->bindParam(':TicketID',$ticket->get_TicketID());
            $stmt->execute();
            if($stmt ->RowCount()>0){
                return (array('success' => true ));

            }else {
                return (array('success' => false ,"message"=>"Ticket does not exist"));
            }
        }catch(Exception $e){
            return (array('success' => false,'message' => $e->getMessage()));
        }
    }
    public function getAllTicketByShowTimeID($ShowTimeID){
        try{
        $stmt = $this->db->prepare("SELECT TicketID,ShowTimeID,SeatID,Status FROM Ticket where ShowTimeID = '$ShowTimeID'");
        $stmt->execute();
        $listTicket = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $listTicket[] = new Ticket($row['ShowTimeID'],$row['SeatID'],$row['Status'],$row['TicketID']);
        }
        return (array('success' => true, 'listTicket' => $listTicket));
        }
    catch(PDOException $e){
        return (array('success' => false, 'error' => $e->getMessage()));

    }
}
    public function getAllTicket($page){
        $page = intval($page);
        $number =  35;
        $offset = ($page - 1) * $number;
        $stmt = $this->db->prepare("SELECT TicketID,ShowTimeID,SeatID,Status FROM Ticket ORDER BY TicketID DESC LIMIT $offset,$number");
        $stmt->execute();
        $listTicket = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $listTicket[] = new Ticket($row['ShowTimeID'],$row['SeatID'],$row['Status'],$row['TicketID']);
        }
        return (array('success' => true, 'listTicket' => $listTicket));
    }
    public function updateTicket(Ticket $ticket){
        try {
            $stmt = $this->db->prepare("UPDATE Ticket SET ShowTimeID=:ShowTimeID,SeatID=:SeatID,Status=:Status WHERE TicketID=:TicketID");
            $id = $ticket->get_TicketID();
            $ShowTimeID = $ticket -> get_ShowtimeID();
            $SeatID = $ticket -> get_SeatID();
            $Status = $ticket -> getStatus();
            $stmt->bindParam(':TicketID',$id);
            $stmt->bindParam(':ShowTimeID',$ShowTimeID);
            $stmt->bindParam(':SeatID',$SeatID);
            $stmt->bindParam(':Status',$Status);
            $stmt->execute();
            if($stmt ->rowCount()>0){
                return (array('success' => true ));

            }else {
                return (array('success' => false ,"message"=>"Ticket does not exist"));
            }
        }catch(Exception $e){
            return (array('success' => false,'message' => $e->getMessage()));
        }
    }
}
?>