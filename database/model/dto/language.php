<?php
    class language {
        public $LanguageID;
        public $LanguageName;

        function __construct($LanguageID, $LanguageName) {
            $this->LanguageID = $LanguageID;
            $this->LanguageName = $LanguageName;

        }
        function get_LanguageID() {
            return $this->LanguageID;
        }
        function get_LanguageName() {
            return $this->LanguageName;
        }

        function set_LanguageID($LanguageID) {
            $this->LanguageID = $LanguageID;
       }
       function set_LanguageName($LanguageName) {
            $this->LanguageName = $LanguageName;
       }
    }
?>