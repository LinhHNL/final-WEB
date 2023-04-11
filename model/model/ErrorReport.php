<?php 
require_once (__DIR__.'/../Entity/ErrorReport.php');
require_once (__DIR__.'/../System/Database.php');
class ErrorReportModel{
    public $conn;
    public function __construct(){
        $this->conn = Database::getConnection();
    }
    public function getAllErrorReports(){
        $stmt = $this->conn->prepare("Select 
            ReportID,	
            ErrorMessage,
            ReportTime,	
            Status	,
            CustomerID         
         from errorreport");

        $stmt ->execute();
        $ErrorReports = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
             $ErrorReport = new ErrorReport($row['ErrorMessage'],$row['Status'],$row['ReportTime'],$row['CustomerID'],$row['ReportID']);
             $ErrorReports[] = $ErrorReport;
        }
        echo json_encode(array("success"=>true, "ErrorReports"=>$ErrorReports));
    }
    public function getErrorReportsByID($id){
        $stmt = $this->conn->prepare("SELECT* FROM errorreport WHERE ReportID = :id");
        $stmt ->bindParam(':id',$id);
        $stmt ->setFetchMode(PDO::FETCH_CLASS,'ErrorReport');
        $stmt ->execute();
        $ErrorReport = $stmt->fetchObject();
        if($ErrorReport!=null) {
        echo json_encode(array('success' => true, 'ErrorReport'=>$ErrorReport));
        }else{
        echo json_encode(array('success' => false,'message'=>"ErrorReport not found"));

        }

    }
    function deleteErrorReports($id){
        try{
            $stmt = $this->conn->prepare("DELETE FROM errorreport WHERE ReportID = :id");
            $stmt ->bindParam(":id",$id);
            $stmt ->execute();
            if ($stmt->rowCount() > 0) {
                 echo json_encode(array("success" => true));
             } else {
                 echo json_encode(array("success" => false, "error" => "ErrorReport không tồn tại"));
             
       }}catch(EXception $e)
{
  echo json_encode(array("success" => false, "error" => $e->getMessage()));

       }
    } 
    
    public function createNewID() {
        $query = "SELECT ReportID FROM errorreport ORDER BY CAST(RIGHT(ReportID, LENGTH(ReportID) - 2) AS UNSIGNED) DESC LIMIT 1";
        $result = $this->conn->query($query);
        $lastId = 0;
    
        if ($result->rowCount() > 0) {
            $lastId = intval(substr($result->fetchColumn(), 2));
        }
    
        $newId = "ER" . ($lastId + 1);
        return $newId;
    }
    
    function updateErrorReport(ErrorReport $ErrorReport){
        try{ 
            $stmt = $this->conn->prepare("UPDATE errorreport
             SET ErrorMessage=:ErrorMessage, 
            ReportTime=:ReportTime, 
            Status=:Statuss,
            CustomerID=:CustomerID
             WHERE ReportID=:id");
            $id = $ErrorReport->get_ReportID();
            $ErrorMessage = $ErrorReport->get_ErrorMessage();
            $ReportTime = $ErrorReport->get_ReportTime();
            $CustomerID = $ErrorReport->get_CustomerID();
            $Status = $ErrorReport->get_Status();
            $stmt->bindParam(":id",$id);
            $stmt->bindParam(":ErrorMessage",$ErrorMessage);
            $stmt->bindParam(":ReportTime",$ReportTime);
            $stmt->bindParam(":CustomerID",$CustomerID);
            $stmt->bindParam(":Statuss",$Status);
            $stmt ->execute();
                   
            if ($stmt->rowCount() > 0) {
                echo json_encode(array("success" => true));
            } else {
                echo json_encode(array("success" => false, "error" => "ErrorReport không tồn tại"));
            }
        } catch(Exception $e){
            echo json_encode(array("Success"=>false,"error"=>$e->getMessage()));
        }
    }
    function addErrorReport(ErrorReport $ErrorReport){
        try{ 
            $stmt = $this->conn->prepare("Insert into errorreport values (:ReportID,:ErrorMessage,:ReportTime,:Status,:CustomerID)");
            $id = $this->createNewID();
            $ErrorMessage = $ErrorReport->get_ErrorMessage();
            $ReportTime = $ErrorReport->get_ReportTime();
            $CustomerID = $ErrorReport->get_CustomerID();
            $Status = $ErrorReport->get_Status();
            $stmt->bindParam(":ReportID",$id);
            $stmt->bindParam(":ErrorMessage",$ErrorMessage);
            $stmt->bindParam(":ReportTime",$ReportTime);
            $stmt->bindParam(":CustomerID",$CustomerID);
            $stmt->bindParam(":Status",$Status);
            $stmt ->execute();
               
            if ($stmt->rowCount() > 0) {
                echo json_encode(array("success" => true));
            } else {
                echo json_encode(array("success" => false, "error" => "Thêm không tồn tại"));
            }
        } catch(Exception $e){
            echo json_encode(array("Success"=>false,"error"=>$e->getMessage()));
        }
    }
    
}
$temp = new ErrorReport('V1','Vdsadas2','0000-00-00 00:00:00','C001','ER10');
(new ErrorReportModel())->getErrorReportsByID('ER11');
?>