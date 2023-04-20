<?php 
require_once '../../model/model/BookingModel.php';
require_once '../../model/entity/Booking.php';
class BookingController {
    function getAllBookings($page) {
        return (new BookingModel())->getAllBookings($page);
    }
    function getBookingById($id) {
        return (new BookingModel())->getBookingByID($id);

    }
    function addBooking($data){

         $BookingID;
         $NumberOfTickets;
         $TotalPrice;
         $BookingTime;
                $Voucher;
         $customer_id;
         $status;
        return (new BookingModel())->addBooking(new Booking($NumberOfTickets, $BookingTime, $TotalPrice,  $Voucher,$customer_id ,$status,$BookingID));
    }
    function removeBooking($id){
        return (new BookingModel())->deleteBooking($id);

    }

    function updateBooking($data){
         $BookingID;
         $NumberOfTickets;
         $TotalPrice;
         $BookingTime;
                $Voucher;
         $customer_id;
         $status;
        $Booking = new Booking( $NumberOfTickets, $BookingTime, $TotalPrice,  $Voucher,$customer_id ,$status,$BookingID);
        return (new BookingModel())->updateBooking($Booking);

    }
}

?>