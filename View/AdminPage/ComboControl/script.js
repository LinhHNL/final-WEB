import{
    getAllMenu,
    addMenu,
} from "../../API/MenuAPI.js";
let allData = [];
let currentData = [];
let table = $("#table-content").DataTable({
  select: {
    style: "single",
    info: false,
  },
  searching: false,
  language: {
    lengthMenu: "Số kết quả / Trang _MENU_",
    zeroRecords: "Không tìm thấy dữ liệu",
    info: "Hiển thị trang _PAGE_ trên _PAGES_",
    infoEmpty: "Đang tìm kiếm dữ liệu",
    infoFiltered: "(filtered from _MAX_ total records)",
    paginate: {
      first: "Trang đầu",
      last: "Trang cuối",
      next: "Trang sau",
      previous: "Trang trước",
    },
  },
});
$("#table-content_filter").hide();
$(document).ready(() => {
    // table.on("select", function (e, dt, type, indexes) {
    //   if (type === "row") {
    //     var data = table.rows(indexes).data();
    //     fillEditData(data[0][0]);
    //   }
    // });
    $(".item-choosing-block").click(function () {
      $(".item-choosing-block .divider-mini").remove();
      $(this).append("<div class=divider-mini></div>");
    });
    $(".all-combo").click(() => loadAllMenu().then(() => showData()));
    $("#btn-search").click(() => {
      let query = $(".input-place input").val().trim().toUpperCase();
      currentData = allData.filter(
        (element) =>
          element.ItemID.search(query) != -1
      );
      $(".item-choosing-block .divider-mini").remove();
      $(".search-result").parent().append("<div class=divider-mini></div>");
      showData();
    });
    $("#btn-add").click(() => {
        let ItemID = $("#ModalAddUser #ItemID").val().trim();
        let Name = $("#ModalAddUser #Name").val().trim();
        let Price = $("#ModalAddUser #Price").val().trim();
        let status = $("#ModalAddUser #status").val();
        let imageFiles = $("#ModalAddUser #image")[0].files;
        if (!imageFiles) return;
        $("#ModalAddUser #image")[0]
          .files.convertAllToBase64(/\.(png|jpeg|jpg|gif)$/i)
          .then(function (res) {
            listImage.push(
              ...res.map((e) => {
                return { file: e.result, type: 2 };
              })
            );
            console.log(listImage);
            // addMenu(
            //   "../../..",
            //   Name, 
            //   listImage, 
            //   Price,
            //   status 
            // ).then((res) => {
            //   if (res.success == false)
            //     $("#ModalAddUser .message")
            //       .text("Thêm thất bại")
            //       .removeClass("success");
            //   else
            //     $("#ModalAddUser .message")
            //       .text("Thêm thành công")
            //       .addClass("success");
            // });
          });
    })
    loadAllMenu().then(() => showData());   
});
async function loadAllMenu() {
    currentData = [];
  
    let page = 1;
    let data;
    do {
      data = await getAllMenu("../../..", page);
      currentData.push(...data.menus);
      page++;
    } while (data.menus.length != 0);
    page = 1;
    allData = [...currentData];
  }
function showData() {
    table.clear().draw();
    let data = currentData;
    let numRow = data.length;
    for (let i = 0; i < numRow; i++) {
    //   let genreList = [];
    //   data[i].ListGenre.forEach((genre) => {
    //     genreList.push(genre.GenreName);
    //   });
      table.row
        .add([
          data[i].ItemID,
          data[i].Name,
          data[i].Price,
          data[i].ImageURL,
          data[i].status
        ])
        .draw();
    }
  }
  File.prototype.convertToBase64 = function () {
    return new Promise(
      function (resolve, reject) {
        var reader = new FileReader();
        reader.onloadend = function (e) {
          resolve({
            fileName: this.name,
            result: e.target.result,
            error: e.target.error,
          });
        };
        reader.readAsDataURL(this);
      }.bind(this)
    );
  };