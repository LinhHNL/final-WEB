<?php 
    class seat {
        public $SeatID;
        public $SeatName;
        public $Status;
        public $RoomID;

        function __construct($SeatID, $SeatName, $RoomID, $Status) {
            $this->SeatID = $SeatID;
            $this->SeatName = $SeatName;
            $this->Status = $Status;
            $this->RoomID = $RoomID;
        }
        function get_SeatID() {
            return $this->SeatID;
        }
        function get_SeatName() {
            return $this->SeatName;
        }
        function get_Status() {
            return $this->Status;
        }
        function get_RoomID() {
            return $this->RoomID;
        }

        function set_SeatID($SeatID) {
            $this->SeatID = $SeatID;
        }
        function set_SeatName($SeatName) {
            $this->SeatName = $SeatName;
        }
        function set_Status($Status) {
            $this->Status = $Status;
        }
        function set_RoomID($RoomID) {
            $this->RoomID = $RoomID;
        }
    }
?>