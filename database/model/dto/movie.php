<?php
    class movie {
        public $MovieID;
        public $MovieName;
        public $Director;
        public $Year;
        public $Premiere;
        public $URLTrailer;
        public $Time;
        public $StudioID;
        public $LanguageID;


        function __construct($MovieID, $MovieName, $Year, $Director, $Premiere, $URLTrailer, $Time, $StudioID, $LanguageID) {
            $this->MovieID = $MovieID;
            $this->MovieName = $MovieName;
            $this->Director = $Director;
            $this->Year = $Year;
            $this->Premiere = $Premiere;
            $this->URLTrailer = $URLTrailer;
            $this->Time = $Time;
            $this->StudioID = $StudioID;
            $this->LanguageID = $LanguageID;

        }
        function get_MovieID() {
            return $this->MovieID;
        }
        function get_MovieName() {
            return $this->MovieName;
        }
        function get_Director() {
            return $this->Director;
        }
        function get_Year() {
            return $this->Year;
        }
        function get_Premiere() {
            return $this->Premiere;
        }
        function get_URLTrailer() {
            return $this->URLTrailer;
        }
        function get_Time() {
            return $this->Time;
        }
        function get_StudioID() {
            return $this->StudioID;
        }
        function get_LanguageID() {
            return $this->LanguageID;
        }
        function set_MovieID($MovieID) {
        $this->MovieID = $MovieID;
        }
        function set_MovieName($MovieName) {
            $this->MovieName = $MovieName;
        }
        function set_Director($Director) {
            $this->Director = $Director;
        }
        function set_Year($Year) {
            $this->Year = $Year;
        }
        function set_Premiere($Premiere) {
            $this->Premiere = $Premiere;
        }
        function set_URLTrailer($URLTrailer) {
            $this->URLTrailer = $URLTrailer;
        }
        function set_Time($Time) {
            $this->Time = $Time;
        }
        function set_StudioID($StudioID) {
            $this->StudioID = $StudioID;
        }
        function set_LanguageID($LanguageID) {
            $this->LanguageID = $LanguageID;
        }
    }
?>