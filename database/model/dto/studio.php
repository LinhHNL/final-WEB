<?php
    class studio {
        public $StudioID;
        public $StudioName;
        public $Address;
        public $Phone;
        public $Email;


        function __construct($StudioName, $StudioID, $Address, $Phone, $Email) {
            $this->StudioID = $StudioID;
            $this->StudioName = $StudioName;
            $this->Address = $Address;
            $this->Phone = $Phone;
            $this->Email = $Email;
        }

        function get_StudioID() {
            return $this->StudioID;
        }
        function get_StudioName() {
            return $this->StudioName;
        }
        function get_Address() {
            return $this->Address;
        }
        function get_Phone() {
            return $this->Phone;
        }
        function get_Email() {
            return $this->Email;
        }

        function set_StudioID($StudioID) {
            $this->StudioID = $StudioID;
        }
        function set_StudioName($StudioName) {
            $this->StudioName = $StudioName;
        }
        function set_Address($Address) {
            $this->Address = $Address;
        }
        function set_Phone($Phone) {
            $this->Phone = $Phone;
        }
        function set_Email($Email) {
            $this->Email = $Email;
        }
    }
?>