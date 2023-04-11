<?php 
    class Promotion {
        public $PromotionID;
        public $PromotionName;
        public $Description;
        public $StartTime;
        public $EndTime;
        public $Discount;
        public $Code;


        function __construct($PromotionName, $StartTime, $Description, $EndTime, $Discount, $Code, $PromotionID=null) {
            $this->PromotionName = $PromotionName;
            $this->Description = $Description;
            $this->StartTime = $StartTime;
            $this->EndTime = $EndTime;
            $this->Discount = $Discount;
            $this->Code = $Code;
            if($PromotionID!=null){
                $this->PromotionID = $PromotionID;
            }
        }
        function get_PromotionID() {
            return $this->PromotionID;
        }
        function get_PromotionName() {
            return $this->PromotionName;
        }
        function get_Description() {
            return $this->Description;
        }
        function get_StartTime() {
            return $this->StartTime;
        }
        function get_EndTime() {
            return $this->EndTime;
        }
        function get_Discount() {
            return $this->Discount;
        }
        function get_Code() {
            return $this->Code;
        }

        function set_PromotionID($PromotionID) {
            $this->PromotionID = $PromotionID;
        }
        function set_PromotionName($PromotionName) {
            $this->PromotionName = $PromotionName;
        }
        function set_Description($Description) {
            $this->Description = $Description;
        }
        function set_StartTime($StartTime) {
            $this->StartTime = $StartTime;
        }
        function set_EndTime($EndTime) {
            $this->EndTime = $EndTime;
        }
        function set_Discount($Discount) {
            $this->Discount = $Discount;
        }
        function set_Code($Code) {
            $this->Code = $Code;
        }
    }
?>