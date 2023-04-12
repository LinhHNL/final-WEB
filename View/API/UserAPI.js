const getHotMovieAPI = async () => {
  const data = await fetch(
    "../../Controller/Movie/MoiveService.php?action=getMoiveHot",
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getPremierMovie = async (page) => {
  page = 1;
  const data = await fetch(
    `../../Controller/Movie/MoiveService.php?action=getPremieredMovies&page=${page}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getUpcomingMovie = async (page) => {
  page = 1;
  const data = await fetch(
    `../../Controller/Movie/MoiveService.php?action=getUpcomingMovies&page=${page}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getGenreID = async (page, genreid) => {
  page = 1;
  genreid = 1;
  const data = await fetch(
    `../../Controller/Movie/MoiveService.php?action=getMoiveByGenres&page=${page}&genreid=${genreid}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
getHotMovieAPI();
