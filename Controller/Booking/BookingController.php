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

        $BookingName =   $data['BookingName'];
        $Description =  $data['Description'] ;
        return (new BookingModel())->addBooking(new Booking($BookingName, $Description));
    }
    function removeBooking($id){
        return (new BookingModel())->deleteBooking($id);

    }

    function updateBooking($data){
         $BookingID = $data['BookingID'];
         $BookingName =   $data['BookingName'];
         $Description =  $data['Description'] ;
        $Booking = new Booking( $BookingName, $Description,$BookingID);
        return (new BookingModel())->updateBooking($Booking);

    }
}

?>