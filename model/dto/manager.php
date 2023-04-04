<?php 
    class manager {
        public $ManagerID;
        public $FullName;
        public $Username;
        public $Email;
        public $Phone;
        public $Password;

        function __construct($ManagerID, $FullName, $Email, $Username, $Phone, $Password) {
            $this->ManagerID = $ManagerID;
            $this->FullName = $FullName;
            $this->Username = $Username;
            $this->Email = $Email;
            $this->Phone = $Phone;
            $this->Password = $Password;
        }
        function get_ManagerID() {
            return $this->ManagerID;
        }
        function get_FullName() {
            return $this->FullName;
        }
        function get_Username() {
            return $this->Username;
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

        function set_ManagerID($ManagerID) {
            $this->ManagerID = $ManagerID;
       }
       function set_FullName($FullName) {
            $this->FullName = $FullName;
       }
       function set_Username($Username) {
            $this->Username = $Username;
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