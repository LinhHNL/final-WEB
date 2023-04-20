<?php 
require_once '../../model/model/BookingModel.php';
require_once '../../model/model/TicketModel.php';
require_once '../../model/model/MenuDetailModel.php';
require_once '../../model/entity/Booking.php';
class BookingController {
    function getAllBookings($page) {
        return (new BookingModel())->getAllBookings($page);
    }
    function getBookingById($id) {
        return (new BookingModel())->getBookingByID($id);

    }
    public function getAllBookingsByCustomerID($customer,$page){
        return (new BookingModel())->getAllBookingsByCustomerID($customer,$page);
    }
    public function getBookingDetailsByBookingID($bookingid){
        return (new BookingModel())->getBookingDetails($bookingid);

    }
    function addBooking($data){

         $NumberOfTickets = $data['NumberOfTickets'];
         $TotalPrice = $data['TotalPrice'];
         $BookingTime = $data['BookingTime'];
         $Voucher = $data['Voucher'];
         $customer_id = $data['customer_id'];
         $ListTicket = $data['ListTicket'];
         $ListMenu = $data['ListMenu'];
        $status = 1;
        $id  = ((new BookingModel())->addBooking(new Booking($NumberOfTickets, $BookingTime, $TotalPrice,  $Voucher,$customer_id ,$status)))['booking_id'];

        foreach($ListTicket as $ticket){
            
        }
         
    }
    function removeBooking($id){
        return (new BookingModel())->deleteBooking($id);

    }

    function updateBooking($data){
        $BookingID = $data['BookingID'];
        $NumberOfTickets = $data['NumberOfTickets'];
        $TotalPrice = $data['TotalPrice'];
        $BookingTime = $data['BookingTime'];
        $Voucher = $data['Voucher'];
        $customer_id = $data['customer_id'];
        $status = $data['status'];
        $Booking = new Booking( $NumberOfTickets, $BookingTime, $TotalPrice,  $Voucher,$customer_id ,$status,$BookingID);
        return (new BookingModel())->updateBooking($Booking);

    }
}

?>