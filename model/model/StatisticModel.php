<?php 

require_once(__DIR__.'/../entity/Promotion.php');
require_once(__DIR__.'/../entity/Movie.php');
require_once(__DIR__.'/../System/Database.php');
class StatisticModel{
    private $conn;
    public function __construct(){
        $this->conn = (new Database())->getConnection();
    }
    public function getRevenueForDate( $date ){
        try{
            $sql = "SELECT SUM(TotalPrice) AS DailyRevenue, BookingTime as Day
            FROM booking
            WHERE DATE(BookingTime) = :date
            GROUP BY DATE(BookingTime);
            ";
            $stmt = $this->conn->prepare( $sql );
            $stmt ->bindParam(":date", $date,PDO::PARAM_STR);
            $stmt ->execute();
            $result = $stmt->fetch();
            if (!$result) {
                return array("success" => false, "error" => "No data found for the given date");
            }
    
            return array("success" => true, "DailyRevenue" =>$result['DailyRevenue'], "Day" =>$result['Day']);
        }catch( Exception $e){
            return array("success"=>false , "error"=>$e->getMessage());
        }
     }
     public function getRevenueForMonth($year, $month) {
        try {
            $sql = "SELECT SUM(TotalPrice) AS MonthlyRevenue, DATE_FORMAT(BookingTime, '%Y-%m') AS Month
                    FROM booking
                    WHERE YEAR(BookingTime) = :year AND MONTH(BookingTime) = :month
                    GROUP BY DATE_FORMAT(BookingTime, '%Y-%m')";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(":year", $year, PDO::PARAM_INT);
            $stmt->bindParam(":month", $month, PDO::PARAM_INT);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
            if (!$result) {
                return array("success" => false, "error" => "No data found for the given month");
            }
    
            return array("success" => true, "MonthlyRevenue" => $result['MonthlyRevenue'], "Month" => $result['Month']);
        } catch (Exception $e) {
            return array("success" => false, "error" => $e->getMessage());
        }
    }
    
    public function getRevenueForYear($year) {
        try {
            $sql = "SELECT SUM(TotalPrice) AS YearlyRevenue, YEAR(BookingTime) AS Year
                    FROM booking
                    WHERE YEAR(BookingTime) = :year
                    GROUP BY YEAR(BookingTime)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(":year", $year, PDO::PARAM_INT);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
            if (!$result) {
                return array("success" => false, "error" => "No data found for the given year");
            }
    
            return array("success" => true, "YearlyRevenue" => $result['YearlyRevenue'], "Year" => $result['Year']);
        } catch (Exception $e) {
            return array("success" => false, "error" => $e->getMessage());
        }
    }
    
    public function getRevenueForQuarterOfYear($year, $quarter) {
        try {
            $sql = "SELECT SUM(TotalPrice) AS QuarterlyRevenue, QUARTER(BookingTime) AS Quarter, YEAR(BookingTime) AS Year
                    FROM booking
                    WHERE YEAR(BookingTime) = :year AND QUARTER(BookingTime) = :quarter
                    GROUP BY QUARTER(BookingTime), YEAR(BookingTime)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(":year", $year, PDO::PARAM_INT);
            $stmt->bindParam(":quarter", $quarter, PDO::PARAM_INT);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
            if (!$result) {
                return array("success" => false, "error" => "No data found for the given year and quarter");
            }
    
            return array("success" => true, "QuarterlyRevenue" => $result['QuarterlyRevenue'], "Quarter" => $result['Quarter'], "Year" => $result['Year']);
        } catch (Exception $e) {
            return array("success" => false, "error" => $e->getMessage());
        }
    }
    
    public function getTopHighestGrossingMovie($page){
        try{
            $perPage = 10;
            $offset = ($page - 1) * $perPage;
            $sql = "SELECT SUM(IF(seat.type = 1, showtime.Price, showtime.Price * 2)) AS TotalRevenue , Movie.*
            FROM ticket
            JOIN detailticket ON ticket.TicketID = detailticket.TicketID
            JOIN seat ON ticket.SeatID = seat.SeatID
            JOIN showtime ON ticket.ShowTimeID = showtime.ShowTimeID
            JOIN Movie on Movie.MovieID = showtime.MovieID
            GROUP BY (Movie.MovieID)
            LIMIT :perPage OFFSET :offset";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(':perPage', $perPage, PDO::PARAM_INT);
            $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
            $stmt ->execute();
            $list = array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $temp['movie'] = new Movie(
                    $row['MovieName'],
                    $row['Year'],
                    $row['Director'],
                    $row['Premiere'],
                    $row['URLTrailer'],
                    $row['Time'],
                    $row['StudioID'],
                    $row['LanguageID'],
                    $row['story'],
                    $row['age'],
                    $row['MovieID']
                );
                $temp['TotalRevenue'] = $row['TotalRevenue'] ;
                $list[] = $temp;
            }
        return array("success"=>true,"list"=>$list);
        }
        catch(Exception $e){
            return array("success" => false, "error" =>$e->getMessage());
        }
    }
    public function getTopHighestGrossingItem(){
      
    }
    public function getTopHighestGrossingThearts(){
        try{
            $sql = "SELECT SUM(IF(seat.type = 1, showtime.Price, showtime.Price * 2)) AS TotalRevenue , theater.*
            FROM ticket
            JOIN detailticket ON ticket.TicketID = detailticket.TicketID
            JOIN seat ON ticket.SeatID = seat.SeatID
            JOIN showtime ON ticket.ShowTimeID = showtime.ShowTimeID
            JOIN room ON room.RoomID = showtime.RoomID
            JOIN theater on theater.TheaterID = room.TheaterID
            GROUP BY (theater.TheaterID)";
             $stmt = $this->conn->prepare($sql);
            
             $stmt ->execute();
             $list = array();
             while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $Theater['theater'] = new Theater( $row['TheaterName'], $row['Address'], $row['Phone'], $row['NumberOfRooms'],$row['TheaterID']);
                $Theater['TotalRevenue'] = $row['TotalRevenue'];
                $list = $Theater;
            }
            return array("success"=>true,"list"=>$list);
        }catch(Exception $e){
            return array("success" => false, "error" =>$e->getMessage());
            
        }
    }
}
?>