# Đồ án cuối kỳ môn Lập trình Wen và Ứng dụng
## About the project
- Đây là 1 trang web đặt vé xem phim cung cấp các chức năng tìm kiếm thông tin về phim, xuất chiếu, khuyến mãi và đặt vé, thanh toán online cho Khách hàng. Các chức năng quản lý phim, suất chiếu, đặt vé, tài khoản khách hàng, menu, khuyến mãi và thống kê doanh thu. 
- Trang web được xây dựng bằng HTML, CSS, Javascript, Boostrap, MySQL và PHP.
## Danh sách thành viên
- Ngô Chí Cường - 52100
- Bùi Quang Thịnh - 52100 
- Kiều Cao Minh Kiệt - 52100 
- Huỳnh Nhật Linh - 52100 
- Phùng Thị Thủy Tiên - 52100846
## Software Development Principles, Patterns, and Practices
Model-View-Controller (MVC): Mô hình MVC phân tách các khía cạnh khác nhau của ứng dụng (logic đầu vào, logic business, và giao diện người dùng logic), và cung cấp một kết nối giữa các yếu tố này.

Model đóng gói dữ liệu ứng dụng và nói chung họ sẽ bao gồm các POJO.

Controller chịu trách nhiệm xử lý yêu cầu người sử dụng và xây dựng Model phù hợp và chuyển nó qua tầng View để hiển thị.

## Code Structure
Cấu trúc chương trình của trang web được tổ chức như sau:
- S52100778.do-an-cuoi-ky-mon-lap-trinh-web: bao gồm class main của chương trình.
- S52100778.do-an-cuoi-ky-mon-lap-trinh-web.Controllers: Chứa các bộ điều khiển (controller) xử lý các yêu cầu (request) và phản hồi (response) với HTTP.
- S52100778.do-an-cuoi-ky-mon-lap-trinh-web.models:  các lớp của các đối tượng có trong chương trình.
- S52100778.do-an-cuoi-ky-mon-lap-trinh-web.images: Chứa các hình nền, hình ảnh sử dụng trong của trang web.
- S52100778.do-an-cuoi-ky-mon-lap-trinh-web.database: Chứa database của trang web.
- S52100778.do-an-cuoi-ky-mon-lap-trinh-web.View: Chứa các dữ liệu mà chúng ta lấy từ dữ liệu trong model để có thể hiển thị đầu ra cho người dùng.

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




```


## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
