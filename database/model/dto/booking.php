<?php
    class booking {
        public $BookingID;
        public $NumberOfTickets;
        public $TotalPrice;
        public $BookingTime;
        public $DateTime;
        public $Voucher;

        function __construct($BookingID, $NumberOfTickets, $BookingTime, $TotalPrice, $DateTime, $Voucher) {
            $this->BookingID = $BookingID;
            $this->NumberOfTickets = $NumberOfTickets;
            $this->TotalPrice = $TotalPrice;
            $this->BookingTime = $BookingTime;
            $this->DateTime = $DateTime;
            $this->Voucher = $Voucher;
        }
        function get_BookingID() {
            return $this->BookingID;
        }
        function get_NumberOfTickets() {
            return $this->NumberOfTickets;
        }
        function get_TotalPrice() {
            return $this->TotalPrice;
        }
        function get_BookingTime() {
            return $this->BookingTime;
        }
        function get_DateTime() {
            return $this->DateTime;
        }
        function get_Voucher() {
            return $this->Voucher;
        }

        function set_BookingID($BookingID) {
            $this->BookingID = $BookingID;
        }
        function set_NumberOfTickets($NumberOfTickets) {
            $this->NumberOfTickets = $NumberOfTickets;
        }
        function set_TotalPrice($TotalPrice) {
            $this->TotalPrice = $TotalPrice;
        }
        function set_BookingTime($BookingTime) {
            $this->BookingTime = $BookingTime;
        }
        function set_DateTime($DateTime) {
            $this->DateTime = $DateTime;
        }
        function set_Voucher($Voucher) {
            $this->Voucher = $Voucher;
        }
    }
?>