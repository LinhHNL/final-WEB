const getShowTimeByID = async (url, movieid = 1, date = 16) => {
  const data = await fetch(
    `${url}/Controller/Showtime/ajax.php?action=getAllShowTimesByMovie&movieid=${movieid}&date=${date}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getAllShowTimesByDate = async (url, date = "2022-10-10") => {
  const data = await fetch(
    `${url}/Controller/Showtime/ajax.php?action=getShowTimeByDate&date=${date}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getShowTimeByDateAndGenre = async (
  url,
  date = "2022-10-10",
  Genre = ""
) => {
  const data = await fetch(
    `${url}/Controller/Showtime/ajax.php?action=getShowTimeByDateAndGenre&date=${date}&genre=${Genre}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getShowTimeByID, getAllShowTimesByDate, getShowTimeByDateAndGenre };
//   $movieid = $_GET['movieid'];
//   $date = $_GET['date'];
