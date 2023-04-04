<?php
 class actorof_movie {
    public $ActorID;
    public $NameActor;
    public $MovieID;

    public function __construct($ActorID, $NameActor, $MovieID) {
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

    public function setActorID($ActorID)
    {
        $this->ActorID = $ActorID;
    }
    public function setNameActor($NameActor)
    {
        $this->NameActor = $NameActor;
    }
    public function setMovieID($MovieID)
    {
        $this->MovieID = $MovieID;
    }
}
?>