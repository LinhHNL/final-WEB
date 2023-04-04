<?php 
    class errorreport {
        public $ReportID;
        public $ErrorMessage;
        public $ReportTime;
        public $Status;
        public $CustomerID;

        function __construct($ReportID, $ErrorMessage, $Status, $ReportTime, $CustomerID) {
            $this->ReportID = $ReportID;
            $this->ErrorMessage = $ErrorMessage;
            $this->ReportTime = $ReportTime;
            $this->Status = $Status;
            $this->CustomerID = $CustomerID;
        }
        function get_ReportID() {
            return $this->ReportID;
        }
        function get_ErrorMessage() {
            return $this->ErrorMessage;
        }
        function get_ReportTime() {
            return $this->ReportTime;
        }
        function get_Status() {
            return $this->Status;
        }
        function get_CustomerID() {
            return $this->CustomerID;
        }

        function set_ReportID($ReportID) {
            $this->ReportID = $ReportID;
       }
       function set_ErrorMessage($ErrorMessage) {
            $this->ErrorMessage = $ErrorMessage;
       }
       function set_ReportTime($ReportTime) {
            $this->ReportTime = $ReportTime;
       }
       function set_Status($Status) {
            $this->Status = $Status;
       }
       function set_CustomerID($CustomerID) {
            $this->CustomerID = $CustomerID;
       }
    }
?>