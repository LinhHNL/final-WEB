<?php
    class customer {
        public $CustomerID;
        public $FullName;
        public $Address;
        public $Email;
        public $Phone;
        public $Password;

        function __construct($CustomerID, $FullName, $Email, $Address, $Phone, $Password) {
            $this->CustomerID = $CustomerID;
            $this->FullName = $FullName;
            $this->Address = $Address;
            $this->Email = $Email;
            $this->Phone = $Phone;
            $this->Password = $Password;
        }
        function get_CustomerID() {
            return $this->CustomerID;
        }
        function get_FullName() {
            return $this->FullName;
        }
        function get_Address() {
            return $this->Address;
        }
        function get_Email() {
            return $this->Email;
        }
        function get_Phone() {
            return $this->Phone;
        }
        function get_Password() {
            return $this->Password;
        }

        function set_CustomerID($CustomerID) {
             $this->CustomerID = $CustomerID;
        }
        function set_FullName($FullName) {
             $this->FullName = $FullName;
        }
        function set_Address($Address) {
             $this->Address = $Address;
        }
        function set_Email($Email) {
             $this->Email = $Email;
        }
        function set_Phone($Phone) {
             $this->Phone = $Phone;
        }
        function set_Password($Password) {
             $this->Password = $Password;
        }
    }
?>