<?php
    class menu {
        public $ItemID;
        public $Name;
        public $Price;
        public $ImageURL;

        function __construct($ItemID, $Name, $ImageURL, $Price) {
            $this->ItemID = $ItemID;
            $this->Name = $Name;
            $this->Price = $Price;
            $this->ImageURL = $ImageURL;
        }
        function get_ItemID() {
            return $this->ItemID;
        }
        function get_Name() {
            return $this->Name;
        }
        function get_Price() {
            return $this->Price;
        }
        function get_ImageURL() {
            return $this->ImageURL;
        }
    
        function set_ItemID($ItemID) {
            $this->ItemID = $ItemID;
       }
       function set_Name($Name) {
            $this->Name = $Name;
       }
       function set_Price($Price) {
            $this->Price = $Price;
       }
       function set_ImageURL($ImageURL) {
        $this->ImageURL = $ImageURL;
        }
    }
?>