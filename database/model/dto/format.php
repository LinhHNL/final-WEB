<?php 
     class format {
        public $FormatID;
        public $NameFormat;

        function __construct($FormatID, $NameFormat) {
            $this->FormatID = $FormatID;
            $this->NameFormat = $NameFormat;

        }
        function get_FormatID() {
            return $this->FormatID;
        }
        function get_NameFormat() {
            return $this->NameFormat;
        }

        function set_FormatID($FormatID) {
            $this->FormatID = $FormatID;
       }
       function set_NameFormat($NameFormat) {
            $this->NameFormat = $NameFormat;
       }
    }
?>