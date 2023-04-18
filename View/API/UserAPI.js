const getAllCustomer = async (url = "../..", page = 1) => {
  const urls = `${url}/Controller/User/ajax.php?action=getAllCustomer&page=${page}`;
  const data = await fetch(urls, {
    method: "GET",
  });
  const datatorender = await data.json();
  return datatorender;
};

const getAllManager = async (url = "../..", page = 1) => {
  const urls = `${url}/Controller/User/ajax.php?action=getAllManger&page=${page}`;
  const data = await fetch(urls, {
    method: "GET",
  });
  const datatorender = await data.json();
  return datatorender;
};

const changePassword = async (url = "../..", id, newPass, oldPass) => {
  const urls = `${url}/Controller/User/ajax.php`;
  const data = await fetch(urls, {
    method: "PUT",
    body: JSON.stringify({
      action: "changePassword",
      id: id,
      new_password: newPass,
      old_password: oldPass,
    }),
  });
  const datatorender = await data.json();
  return datatorender;
};

const updateCustomer = async (
  url = "../..",
  id,
  email,
  password,
  fullname,
  address,
  phone
) => {
  const urls = `${url}/Controller/User/ajax.php`;
  const data = await fetch(urls, {
    method: "PUT",
    body: JSON.stringify({
      action: "update_customer",
      id: id,
      email: email,
      password: password,
      fullname: fullname,
      address: address,
      phone: phone,
    }),
  });
  const datatorender = await data.json();
  return datatorender;
};

const updateManager = async (
  url = "../..",
  id,
  email,
  password,
  fullname,
  address,
  phone
) => {
  const urls = `${url}/Controller/User/ajax.php`;
  const data = await fetch(urls, {
    method: "PUT",
    body: JSON.stringify({
      action: "update_manager",
      id: id,
      email: email,
      password: password,
      fullname: fullname,
      address: address,
      phone: phone,
    }),
  });
  const datatorender = await data.json();
  return datatorender;
};

const deleteManager = async (url = "../..", email) => {
  const urls = `${url}/Controller/User/ajax?email=${email}.php`;
  const data = await fetch(urls, {
    method: "DELETE",
  });
  const datatorender = await data.json();
  return datatorender;
};

export {
  getAllCustomer,
  getAllManager,
  changePassword,
  updateCustomer,
  updateManager,
  deleteManager,
};
