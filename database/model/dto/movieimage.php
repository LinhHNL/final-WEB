<?php 
    class movieimage {
        public $ImageID;
        public $ImagePath;
        public $Description;
        public $MovieID;

        function __construct($ImageID, $ImagePath, $MovieID, $Description) {
            $this->ImageID = $ImageID;
            $this->ImagePath = $ImagePath;
            $this->Description = $Description;
            $this->MovieID = $MovieID;
        }
        function get_ImageID() {
            return $this->ImageID;
        }
        function get_ImagePath() {
            return $this->ImagePath;
        }
        function get_Description() {
            return $this->Description;
        }
        function get_MovieID() {
            return $this->MovieID;
        }

        function set_ImageID($ImageID) {
            $this->ImageID = $ImageID;
        }
        function set_ImagePath($ImagePath) {
            $this->ImagePath = $ImagePath;
        }
        function set_Description($Description) {
            $this->Description = $Description;
        }
        function set_MovieID($MovieID) {
            $this->MovieID = $MovieID;
        }
    }
?>