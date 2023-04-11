<?php 
require_once(__DIR__.'/../entity/Rating.php');
require_once(__DIR__.'/../System/Database.php');

class RatingModel {
    public $conn;

    public function __construct(){
        $this->conn = Database::getConnection();
    }

    // Phương thức lấy thông tin Rating theo ID
    public function getRatingByID($id) {
        $stmt = $this->conn->prepare("SELECT RatingID, Score, Comment, Day, MovieID, CustomerID FROM rating WHERE RatingID=:RatingID");
        $stmt->bindParam(':RatingID', $id);
        $stmt->setFetchMode(PDO::FETCH_CLASS,'Rating');
        $stmt->execute();
        $Rating = $stmt->fetchObject();
        if($Rating!=null){
            echo json_encode(array("success"=>true,"Rating"=>$Rating));
        }else{
            echo json_encode(array("success"=>false,"error"=>"Rating không tồn tại"));
        }
    }
    
    // Phương thức thêm mới một Rating
    public function addRating(Rating $Rating){
        try{
            $stmt =$this->conn->prepare("INSERT INTO rating (RatingID, Score, Comment, Day, MovieID, CustomerID) VALUES (:RatingID, :Comment, :Day, :Score,:MovieID, :CustomerID)");
            $RatingID = $this->createNewID();
            $Score = $Rating->get_Score();
            $Comment = $Rating->get_Comment();
            $Day = $Rating->get_Day();
            $MovieID = $Rating->get_MovieID();
            $CustomerID = $Rating->get_CustomerID();

            $stmt->bindParam(':RatingID', $RatingID);
            $stmt->bindParam(':Score', $Score);
            $stmt->bindParam(':Comment', $Comment);
            $stmt->bindParam(':Day', $Day);
            $stmt->bindParam(':MovieID', $MovieID);
            $stmt->bindParam(':CustomerID', $CustomerID);

            $stmt ->execute();
            echo json_encode(array("success"=>true));
        }catch(Exception $e){
            echo json_encode(array("success"=>false,"error"=>$e->getMessage()));
        }
    }
    // Phương thức xóa một Rating theo ID
public function deleteRating($id) {
    try {
        $stmt = $this->conn->prepare("DELETE FROM Rating WHERE RatingID = :RatingID");
        $stmt->bindParam(':RatingID', $id);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Rating không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}
// Phương thức cập nhật thông tin một Rating
public function updateRating(Rating $Rating) {
    try {
        $stmt =$this->conn->prepare("UPDATE rating SET Score = :Score, Comment = :Comment, Day = :Day, MovieID = :MovieID, CustomerID = :CustomerID WHERE RatingID=:RatingID");
        $RatingID = $Rating->get_RatingID();
        $Score = $Rating->get_Score();
        $Comment = $Rating->get_Comment();
        $Day = $Rating->get_Day();
        $MovieID = $Rating->get_MovieID();
        $CustomerID = $Rating->get_CustomerID();

        $stmt->bindParam(':RatingID', $RatingID);
        $stmt->bindParam(':Score', $Score);
        $stmt->bindParam(':Comment', $Comment);
        $stmt->bindParam(':Day', $Day);
        $stmt->bindParam(':MovieID', $MovieID);
        $stmt->bindParam(':CustomerID', $CustomerID);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("success" => false, "error" => "Rating không tồn tại"));
        }
    } catch (Exception $e) {
        echo json_encode(array("success" => false, "error" => $e->getMessage()));
    }
}

    // Phương thức getAll cho Rating
public function getAllRating(){
    $stmt = $this->conn->prepare("SELECT RatingID, Score,  Comment, Day,  MovieID, CustomerID FROM rating");
    $stmt->execute();
    $Ratings = array();
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $Rating = new Rating($row['RatingID'], $row['Score'], $row['Comment'], $row['Day'], $row['MovieID'], $row['CustomerID']);
        $Ratings[] = $Rating;
    }
    echo json_encode(array("success" => true, "list" => $Ratings));
}

    // Phương thức sinh mã ID mới cho Rating
    public function createNewID() {
        $query = "SELECT RatingID FROM rating ORDER BY CAST(RIGHT(RatingID, LENGTH(RatingID) - 2) AS UNSIGNED) DESC LIMIT 1";
        $result = $this->conn->query($query);
        $lastId = 0;
    
        if ($result->rowCount() > 0) {
            $lastId = intval(substr($result->fetchColumn(), 2));
        }
    
        $newId = "RT" . ($lastId + 1);
        return $newId;
    }

}

$temp = new Rating(9, '3033-10-10 10:10:10','Comment rating 3',  'M001', 'C001', 'RT001');


echo (new RatingModel())->getAllRating();
?>