const getRoomById = async (url, id = "1") => {
  const data = await fetch(
    `${url}/Controller/Room/ajax.php?action=getRoomById&id=${id}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getRoomById };
