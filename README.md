# Đồ án cuối kỳ môn Lập trình Wen và Ứng dụng
## About the project
- Đây là 1 trang web đặt vé xem phim cung cấp các chức năng tìm kiếm thông tin về phim, xuất chiếu, khuyến mãi và đặt vé, thanh toán online cho Khách hàng. Các chức năng quản lý phim, suất chiếu, đặt vé, tài khoản khách hàng, menu, khuyến mãi và thống kê doanh thu. 
- Trang web được xây dựng bằng HTML, CSS, Javascript, Boostrap, MySQL và PHP.
## Danh sách thành viên
- Ngô Chí Cường - 52100778
- Bùi Quang Thịnh - 52100584 
- Kiều Cao Minh Kiệt - 52100811 
- Huỳnh Nhật Linh - 52100815
- Phùng Thị Thủy Tiên - 52100846
## Software Development Principles, Patterns, and Practices
Model-View-Controller (MVC): Mô hình MVC phân tách các khía cạnh khác nhau của ứng dụng (logic đầu vào, logic business, và giao diện người dùng logic), và cung cấp một kết nối giữa các yếu tố này.

Model đóng gói dữ liệu ứng dụng và nói chung họ sẽ bao gồm các POJO.

Controller chịu trách nhiệm xử lý yêu cầu người sử dụng và xây dựng Model phù hợp và chuyển nó qua tầng View để hiển thị.

## Code Structure
Cấu trúc chương trình của trang web được tổ chức như sau:
- ./Source: bao gồm class main của chương trình.
- ./Source/Controllers: Chứa các bộ điều khiển (controller) xử lý các yêu cầu (request) và phản hồi (response) với HTTP.
- ./Source/models:  các lớp của các đối tượng có trong chương trình.
- ./Source/images: Chứa các hình nền, hình ảnh sử dụng trong của trang web.
- ./Source/database: Chứa database của trang web.
- ./Source/View: Chứa các dữ liệu mà chúng ta lấy từ dữ liệu trong model để có thể hiển thị đầu ra cho người dùng.

# Running the Application
## Những công cụ cần có: 
- XAMPP
- Visual Studio Code (hoặc bất cứ các IDE hoặc Code Editer có thể chạy code)
## Import database:
- Mở ứng dụng XAMPP, chọn start Apache và MySQL
- Truy cập phpMyAdmin bằng cách nhấn Admin bên cạnh nút Start MySQL
- Chọn import -> Chọn database dbmovie.sql -> Import
- Mở công cụ lập trình Visual Studio Code
- Open project
- Chạy class main
- Tới trình duyệt và gõ localhost:8080
- Sau khi dùng xong, tắt chương trình ở IDE và Stop Apache, MySQL
## Usage
Demo account:
- Admin(username/pass): admin1/123
- Customer(username/pass): user1/123
- Demo Voucher: GIAMSOC50PHANTRAM

Demo website:

Ta có hiển thị giao diện trang chủ của user như sau:
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/6b9d97047da6c7daf2eb9ab1c3ed2eb4/image.png"/>
Khi muốn đăng nhập thì hệ thống sẽ hiển thị form đăng nhập ta chỉ cần điền Email và password như tài khoản bên trên cung cấp.
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/02cb40eb409537d197339c5c17a61a13/image.png"/>
Với account Customer đã cung cấp thì ta đã có thể đăng nhập và được hệ thống chuyển tới giao diện trang chủ. Ở đây, khi muốn đặt vé ta sẽ bấm vào mục lịch chiếu để chọn ngày chiếu và rạp chiếu:
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/cce1c2f56b93b6ce59c96f8b4b170d48/image.png"/>
Sau khi chọn rạp chiếu thì các lịch chiếu và phim hiện ra. Ở đây, 5CT chọn phim Khế ước với lịch chiếu là 20:07.
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/43163e5fcbe8ab0f34174d3de1b3022b/image.png"/>
Sau khi chọn phim và suất chiếu thì hệ thống cho hiển thị trang chọn ghế với số ghế tương ứng. Ở đây mình sẽ chọn số lượng ghế là 4.
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/c3088992684210b105fe695e3a0a9be0/image.png"/>
Sau khi chọn số lượng ghế thì ta bắt đầu chọn vị trí ghế bằng cách tích vào các ghế hiện trên màn hình với số lượng tương ứng là 4 thì mình chọn 4 ghế là A3, A4, A5, A6:
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/3b8dd7ead5794ac5c0b1b3eb83f29f39/image.png"/>
Sau khi chọn ghế ta bấm nút chọn combo để hiện thị giao diện tương ứng rồi chọn combo mình thích. Ở đây, chúng ta chọn combo với mức giá là 80000.
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/6c8a0f9822da2f21703849dbc9a07271/image.png"/>
Khi bấm thanh toán thì ta được chuyển tới giao diện thanh toán. Ở đây ta áp dụng ưu đãi có mã là WelComeWeb, chọn thanh toán bằng phương thức momo, cuối cùng là tick vào ô đồng ý điều khoản.
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/2dd3e5698aa829a01b215cce7272cacf/image.png"/>
Khi bấm nút thanh toán và thanh toán xong thì hệ thống cho hiện giao diện đặt vé thành công và các lưu ý cần thiết.
<img src="https://gitlab.duthu.net/S52100778/do-an-cuoi-ky-mon-lap-trinh-web/uploads/ec87d705784bf3799a78ed0887a6ef8e/image.png"/>





