const getShowTimeByID = async (url, movieid = 1, date = 16) => {
  console.log(
    `${url}/Controller/Showtime/ajax.php?action=getAllShowTimesByMovie&movieid=${movieid}&date=${date}`
  );
  const data = await fetch(
    `${url}/Controller/Showtime/ajax.php?action=getAllShowTimesByMovie&movieid=${movieid}&date=${date}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getShowTimeByID };
//   $movieid = $_GET['movieid'];
//   $date = $_GET['date'];
