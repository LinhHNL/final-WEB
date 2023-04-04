<?php
    class moviegenre {
        public $GenreID;
        public $GenreName;
        public $Description;

        function __construct($GenreID, $GenreName, $Description) {
            $this->GenreID = $GenreID;
            $this->GenreName = $GenreName;
            $this->Description = $Description;

        }
        function get_GenreID() {
            return $this->GenreID;
        }
        function get_GenreName() {
            return $this->GenreName;
        }
        function get_Description() {
            return $this->Description;
        }

        function set_GenreID($GenreID) {
            $this->GenreID = $GenreID;
        }
        function set_GenreName($GenreName) {
            $this->GenreName = $GenreName;
        }
        function set_Description($Description) {
            $this->Description = $Description;
        }
    }
?>