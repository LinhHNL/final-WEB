<?php
    class thearter {
        public $TheaterID;
        public $TheaterName;
        public $Address;
        public $Phone;
        public $NumberOfRooms;


        function __construct($TheaterName, $TheaterID, $Address, $Phone, $NumberOfRooms) {
            $this->TheaterID = $TheaterID;
            $this->TheaterName = $TheaterName;
            $this->Address = $Address;
            $this->Phone = $Phone;
            $this->NumberOfRooms = $NumberOfRooms;
        }

        function get_TheaterID() {
            return $this->TheaterID;
        }
        function get_TheaterName() {
            return $this->TheaterName;
        }
        function get_Address() {
            return $this->Address;
        }
        function get_Phone() {
            return $this->Phone;
        }
        function get_NumberOfRooms() {
            return $this->NumberOfRooms;
        }

        function set_TheaterID($TheaterID) {
            $this->TheaterID = $TheaterID;
        }
        function set_TheaterName($TheaterName) {
            $this->TheaterName = $TheaterName;
        }
        function set_Address($Address) {
            $this->Address = $Address;
        }
        function set_Phone($Phone) {
            $this->Phone = $Phone;
        }
        function set_NumberOfRooms($NumberOfRooms) {
            $this->NumberOfRooms = $NumberOfRooms;
        }
    }
?>