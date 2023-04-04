<?php
    class ticket {
        public $TicketID;
        public $ShowtimeID;
        public $SeatID;


        function __construct($TicketID, $ShowtimeID, $SeatID) {
            $this->TicketID = $TicketID;
            $this->ShowtimeID = $ShowtimeID;
            $this->SeatID = $SeatID;
        }
        function get_TicketID() {
            return $this->TicketID;
        }
        function get_ShowtimeID() {
            return $this->ShowtimeID;
        }
        function get_SeatID() {
            return $this->SeatID;
        }

        function set_TicketID($TicketID) {
            $this->TicketID = $TicketID;
        }
        function set_ShowtimeID($ShowtimeID) {
            $this->ShowtimeID = $ShowtimeID;
        }
        function set_SeatID($SeatID) {
            $this->SeatID = $SeatID;
        }
    }
?>