<?php
    class actorof_movie {
        public $ActorID;
        public $NameActor;
        public $MovieID;


        function __construct($ActorID, $NameActor, $MovieID) {
            $this->ActorID = $ActorID;
            $this->NameActor = $NameActor;
            $this->MovieID = $MovieID;
        }
        function get_ActorID() {
            return $this->ActorID;
        }
        function get_NameActor() {
            return $this->NameActor;
        }
        function get_MovieID() {
            return $this->MovieID;
        }
    }

    class booking {
        public $BookingID;
        public $NumberOfTickets;
        public $TotalPrice;
        public $BookingTime;
        public $DateTime;
        public $Voucher;

        function __construct($BookingID, $NumberOfTickets, $BookingTime, $TotalPrice, $DateTime, $Voucher) {
            $this->BookingID = $BookingID;
            $this->NumberOfTickets = $NumberOfTickets;
            $this->TotalPrice = $TotalPrice;
            $this->BookingTime = $BookingTime;
            $this->DateTime = $DateTime;
            $this->Voucher = $Voucher;
        }
        function get_BookingID() {
            return $this->BookingID;
        }
        function get_NumberOfTickets() {
            return $this->NumberOfTickets;
        }
        function get_TotalPrice() {
            return $this->TotalPrice;
        }
        function get_BookingTime() {
            return $this->BookingTime;
        }
        function get_DateTime() {
            return $this->DateTime;
        }
        function get_Voucher() {
            return $this->Voucher;
        }
    }

    class customer {
        public $CustomerID;
        public $FullName;
        public $Address;
        public $Email;
        public $Phone;
        public $Password;

        function __construct($CustomerID, $FullName, $Email, $Address, $Phone, $Password) {
            $this->CustomerID = $CustomerID;
            $this->FullName = $FullName;
            $this->Address = $Address;
            $this->Email = $Email;
            $this->Phone = $Phone;
            $this->Password = $Password;
        }
        function get_CustomerID() {
            return $this->CustomerID;
        }
        function get_FullName() {
            return $this->FullName;
        }
        function get_Address() {
            return $this->Address;
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
    }

    class detailmoviegenre {
        public $MovieID;
        public $GenreID;

        function __construct($MovieID, $GenreID) {
            $this->MovieID = $MovieID;
            $this->GenreID = $GenreID;

        }
        function get_MovieID() {
            return $this->MovieID;
        }
        function get_GenreID() {
            return $this->GenreID;
        }
    }

    class detailticket {
        public $TicketID;
        public $BookingID;

        function __construct($TicketID, $BookingID) {
            $this->TicketID = $TicketID;
            $this->BookingID = $BookingID;

        }
        function get_TicketID() {
            return $this->TicketID;
        }
        function get_BookingID() {
            return $this->BookingID;
        }
    }

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
    }

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
    }

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
    }

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
    }

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
    }

    class menudetail {
        public $Number;
        public $Total;
        public $ItemID;
        public $BookingID;

        function __construct($Number, $Total, $BookingID, $ItemID) {
            $this->Number = $Number;
            $this->Total = $Total;
            $this->ItemID = $ItemID;
            $this->BookingID = $BookingID;
        }
        function get_Number() {
            return $this->Number;
        }
        function get_Total() {
            return $this->Total;
        }
        function get_ItemID() {
            return $this->ItemID;
        }
        function get_BookingID() {
            return $this->BookingID;
        }
    }

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
    }

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
    }

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
    }

    class promotion {
        public $PromotionID;
        public $PromotionName;
        public $Description;
        public $StartTime;
        public $EndTime;
        public $Discount;
        public $Code;


        function __construct($PromotionID, $PromotionName, $StartTime, $Description, $EndTime, $Discount, $Code) {
            $this->PromotionID = $PromotionID;
            $this->PromotionName = $PromotionName;
            $this->Description = $Description;
            $this->StartTime = $StartTime;
            $this->EndTime = $EndTime;
            $this->Discount = $Discount;
            $this->Code = $Code;
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
    }

    class rating {
        public $RatingID;
        public $Score;
        public $Comment;
        public $Day;
        public $MovieID;
        public $CustomerID;


        function __construct($RatingID, $Score, $Day, $Comment, $MovieID, $CustomerID) {
            $this->RatingID = $RatingID;
            $this->Score = $Score;
            $this->Comment = $Comment;
            $this->Day = $Day;
            $this->MovieID = $MovieID;
            $this->CustomerID = $CustomerID;
        }
        function get_RatingID() {
            return $this->RatingID;
        }
        function get_Score() {
            return $this->Score;
        }
        function get_Comment() {
            return $this->Comment;
        }
        function get_Day() {
            return $this->Day;
        }
        function get_MovieID() {
            return $this->MovieID;
        }
        function get_CustomerID() {
            return $this->CustomerID;
        }
    }

    class room {
        public $RoomID;
        public $RoomName;
        public $NumberOfSeats;
        public $TheaterID;

        function __construct($RoomID, $RoomName, $TheaterID, $NumberOfSeats) {
            $this->RoomID = $RoomID;
            $this->RoomName = $RoomName;
            $this->NumberOfSeats = $NumberOfSeats;
            $this->TheaterID = $TheaterID;
        }
        function get_RoomID() {
            return $this->RoomID;
        }
        function get_RoomName() {
            return $this->RoomName;
        }
        function get_NumberOfSeats() {
            return $this->NumberOfSeats;
        }
        function get_TheaterID() {
            return $this->TheaterID;
        }
    }

    class seat {
        public $SeatID;
        public $SeatName;
        public $Status;
        public $RoomID;

        function __construct($SeatID, $SeatName, $RoomID, $Status) {
            $this->SeatID = $SeatID;
            $this->SeatName = $SeatName;
            $this->Status = $Status;
            $this->RoomID = $RoomID;
        }
        function get_SeatID() {
            return $this->SeatID;
        }
        function get_SeatName() {
            return $this->SeatName;
        }
        function get_Status() {
            return $this->Status;
        }
        function get_RoomID() {
            return $this->RoomID;
        }
    }

    class showtime {
        public $ShowtimeID;
        public $Price;
        public $MovieID;
        public $StartTime;
        public $EndTime;
        public $RoomID;
        public $FormatID;


        function __construct($ShowtimeID, $Price, $StartTime, $MovieID, $EndTime, $RoomID, $FormatID) {
            $this->ShowtimeID = $ShowtimeID;
            $this->Price = $Price;
            $this->MovieID = $MovieID;
            $this->StartTime = $StartTime;
            $this->EndTime = $EndTime;
            $this->RoomID = $RoomID;
            $this->FormatID = $FormatID;
        }
        function get_ShowtimeID() {
            return $this->ShowtimeID;
        }
        function get_Price() {
            return $this->Price;
        }
        function get_MovieID() {
            return $this->MovieID;
        }
        function get_StartTime() {
            return $this->StartTime;
        }
        function get_EndTime() {
            return $this->EndTime;
        }
        function get_RoomID() {
            return $this->RoomID;
        }
        function get_FormatID() {
            return $this->FormatID;
        }
    }

    class studio {
        public $StudioID;
        public $StudioName;
        public $Address;
        public $Phone;
        public $Email;


        function __construct($StudioName, $StudioID, $Address, $Phone, $Email) {
            $this->StudioID = $StudioID;
            $this->StudioName = $StudioName;
            $this->Address = $Address;
            $this->Phone = $Phone;
            $this->Email = $Email;
        }

        function get_StudioID() {
            return $this->StudioID;
        }
        function get_StudioName() {
            return $this->StudioName;
        }
        function get_Address() {
            return $this->Address;
        }
        function get_Phone() {
            return $this->Phone;
        }
        function get_Email() {
            return $this->Email;
        }
    }

    class thearter {
        public $TheaterID;
        public $TheaterName;
        public $Address;
        public $Phone;
        public $NumberOfRooms;


        function __construct($TheaterName, $TheaterID, $Address, $Phone, $NumberOfRooms) {
            $this->TheaterID = $TheaterID;
            $this->TheaterName = $TheaterName;
            $this->Address = $Address;
            $this->Phone = $Phone;
            $this->NumberOfRooms = $NumberOfRooms;
        }

        function get_TheaterID() {
            return $this->TheaterID;
        }
        function get_TheaterName() {
            return $this->TheaterName;
        }
        function get_Address() {
            return $this->Address;
        }
        function get_Phone() {
            return $this->Phone;
        }
        function get_NumberOfRooms() {
            return $this->NumberOfRooms;
        }
    }

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
    }
?>

