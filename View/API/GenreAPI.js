const getAllGenre = async (url = "../..", page = 1) => {
  const urls = `${url}/Controller/Genre/ajax.php?action=getAll&page=${page}`;
  console.log(urls);
  const data = await fetch(urls, {
    method: "GET",
  });
  const datatorender = await data.json();
  console.log(datatorender);
  return datatorender;
};
export { getAllGenre };
