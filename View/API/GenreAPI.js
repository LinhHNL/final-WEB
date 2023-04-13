const getAllGenre = async (url) => {
  const data = await fetch(
    `${url}/Controller/Genre/GenreService.php?action=getAll`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getAllGenre };
