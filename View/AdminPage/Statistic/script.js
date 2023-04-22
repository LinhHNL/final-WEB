import {
    getRevenueForDate,
    getRevenueForMonth,
    getRevenueForQuarterOfYear,
    getRevenueForYear,
} from "../../API/StatisticAPI.js";
import {
    getAllBooking
} from "../../API/BookingAPI.js";
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

    $(".Statistic-month").click(() => LoadRevenueForMonth().then(() => showDataMonth()));
    $(".Statistic-month").click(function(){
        $("#table-title").text("Tháng"); 
    })
    $(".Statistic-year").click(() => LoadRevenueForYear().then(() => showDataYear()));
    $(".Statistic-year").click(function(){
        $("#table-title").text("Năm"); 
    })
    //$(".Statistic-quarter").click(() => LoadRevenueForQuarter().then(() => showData()));
    $(".item-choosing-block .divider-mini").remove();
    $(".Statistic-month").parent().append("<div class=divider-mini></div>");
    //LoadRevenueForMonth().then(() => showDataMonth())
    LoadRevenueForQuarter();
})
async function LoadRevenueForMonth() {
    currentData = [];
    let yearList = [2022, 2023];
    let monthList = [1,2,3,4,5,6,7,8,9,10,11,12];
    for (let i = 0;i<yearList.length;i++){
        for (let j = 0; j<monthList.length;j++){
            let page = 1;
            let data = await getRevenueForMonth("../../..", yearList[i], monthList[j], page)
            if (data.list[0])
                currentData.push(data.list[0]);
            page = 1;
        }
    }
    currentData= currentData.reverse();
}
async function LoadRevenueForQuarter() {
    currentData = [];
    let yearList = [2022, 2023];
    let monthList = [1,2,3,4];
    let data = await getRevenueForQuarterOfYear("../../..", 2023, 2, 1)
    console.log(data);
    for (let i = 0;i<yearList.length;i++){
        for (let j = 0; j<monthList.length;j++){
            let page = 1;
            // let data = await getRevenueForQuarterOfYear("../../..", yearList[i], monthList[j], page)
            // console.log(data);
            // if (data.list[0])
            //     currentData.push(data.list[0]);
            // page = 1;
            // console.log(currentData);
            page = 1;
        }
    }
    currentData= currentData.reverse();
}
async function LoadRevenueForYear() {
    currentData = [];
    let yearList = [2022, 2023];
    for (let i = 0;i<yearList.length;i++){
        let page = 1;
        let data = await getRevenueForYear("../../..", yearList[i], page)
        currentData.push(data.List[0]);
        page = 1;
    }
    currentData= currentData.reverse();
}
function showDataYear() {
    table.clear().draw();
    let data = currentData;
    let numRow = data.length;
    for (let i = 0; i < numRow; i++) {
          table.row
            .add([
                data[i].Year,
                data[i].YearlyRevenue,              
            ])
            .draw();
    }
}
function showDataMonth() {
    table.clear().draw();
    let data = currentData;
    let numRow = data.length;
    console.log(currentData);
    for (let i = 0; i < numRow; i++) {
          table.row
            .add([
                data[i].Month,
                data[i].MonthlyRevenue,              
            ])
            .draw();
    }
}