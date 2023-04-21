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

const getAllBookingsByCustomerID = async (url = "../..", page = 1, id) => {
  const urls = `${url}/Controller/Booking/ajax.php?action=getAllBookingsByCustomerID&page=${page}&CustomerID=${id}`;
  const data = await fetch(urls, {
    method: "GET",
  });
  const datatorender = await data.json();
  return datatorender;
};

export { AddBooking, getAllBookingsByCustomerID };
