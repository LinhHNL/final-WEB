const getPromotionsVoucher = async (url, page = "1") => {
  const data = await fetch(
    `${url}/Controller/Promotion/ajax.php?action=getPromotionsVorcher&page=${page}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
const getPromotionsEvent = async (url, page = "1") => {
  const data = await fetch(
    `${url}/Controller/Promotion/ajax.php?action=getPromotionsEvent&page=${page}`,
    {
      method: "GET",
    }
  );
  const datatorender = await data.json();
  return datatorender;
};
export { getPromotionsVoucher, getPromotionsEvent };
