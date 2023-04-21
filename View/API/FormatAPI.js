const getAllFormatsByMovieId = async (url, IDMovie = 1) => {
  const data = await fetch(
    `${url}/Controller/Format/ajax.php?action=getAllFormatsByMovieId&movieId=${IDMovie}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getFormatById = async (url, ID = 1) => {
  const data = await fetch(
    `${url}/Controller/Format/ajax.php?action=getFormatById&id=${ID}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getAllFormatsByMovieId, getFormatById };
