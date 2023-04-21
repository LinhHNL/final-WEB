const AddBooking = async (
  url,
  numofticket,
  time,
  voucher,
  CID,
  SID,
  total,
  listtic,
  listme
) => {
  const bodyinput = {
    action: "addBooking",
    NumberOfTickets: numofticket,
    BookingTime: time,
    Voucher: voucher,
    customer_id: CID,
    ShowTimeID: SID,
    TotalPrice: total,
    ListTicket: listtic,
    ListMenu: listme,
  };
  const bodytoadd = JSON.stringify(bodyinput);
  const data = await fetch(`${url}/Controller/Booking/ajax.php`, {
    method: "POST",
    body: bodytoadd,
  });
  const datatorender = await data.json();
  return datatorender;
};
export { AddBooking };
