const getAllMenu = async (url, page = "1") => {
  const data = await fetch(
    `${url}/Controller/Menu/ajax.php?action=getAllMenu&page=${page}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getDetailMenuByID = async (url, id = "1") => {
  const data = await fetch(
    `${url}/Controller/Menu/ajax.php?action=getMenuById&id=${id}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getAllMenu, getDetailMenuByID };
