const getSeatByRoomID = async (url, roomID = "1") => {
  const data = await fetch(
    `${url}/Controller/Seat/ajax.php?action=getSeatByRoomID&id=${roomID}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getSeatByRoomID };
