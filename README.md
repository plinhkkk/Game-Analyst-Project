# Game Monetization Dashboard Analysis

## Giới thiệu

Dự án này phân tích **dashboard monetization của một game mobile** nhằm hiểu rõ cơ chế tạo doanh thu và hành vi chi tiêu của người chơi.  

Phân tích tập trung vào việc xác định:

- Các nguồn doanh thu chính
- Các phân khúc người chơi quan trọng
- Các yếu tố hành vi ảnh hưởng đến monetization

Mục tiêu của dự án là giúp nhóm **sản phẩm và vận hành** hiểu rõ cách doanh thu được hình thành, từ đó đề xuất các chiến lược tối ưu nhằm tăng trưởng doanh thu bền vững.

---

## Mục tiêu phân tích

Phân tích tập trung vào các vấn đề chính sau:

- Đánh giá hiệu quả monetization thông qua các chỉ số:
  - Revenue
  - ARPU
  - ARPPU
  - Conversion Rate

- Xác định nguồn doanh thu theo các chiều phân tích:
  - Game Genre
  - Country
  - Device
  - Payment Method

- Phân tích vai trò của các nhóm người chơi:
  - Whale
  - Dolphin
  - Minnow

- Xác định mối quan hệ giữa hành vi chơi game và chi tiêu thông qua:
  - Frequency
  - Playtime
  - Session Count

---

## Dataset

Dataset mô phỏng hành vi người chơi game mobile và giao dịch mua hàng trong ứng dụng.

**Quy mô dữ liệu**

- 3,024 người chơi
- 13 biến dữ liệu

**Các nhóm dữ liệu chính**

- Thông tin nhân khẩu học
- Hành vi chơi game
- Hành vi chi tiêu

**Phân khúc người chơi**

- Whale: ~2% người chơi nhưng đóng góp phần lớn doanh thu
- Dolphin: ~13% người chơi với mức chi tiêu trung bình
- Minnow: ~85% người chơi với mức chi tiêu thấp

---

## Các chỉ số monetization chính

Tổng quan dashboard cho thấy hệ thống monetization hoạt động với hiệu suất cao.

| Metric | Value |
|------|------|
| Total Users | 3,024 |
| Paying Users | 2,887 |
| Conversion Rate | 95.47% |
| Total Revenue | 296.26K |
| ARPU | 97.97 |
| ARPPU | 102.62 |

Doanh thu từ **Whale chiếm khoảng 59% tổng doanh thu**, phản ánh cấu trúc doanh thu điển hình của game mobile.

---

## Insight chính

### Phân khúc người chơi

Whale là nhóm đóng góp doanh thu lớn nhất mặc dù số lượng rất nhỏ.  
Dolphin đóng vai trò duy trì tăng trưởng ổn định và có tiềm năng chuyển đổi thành Whale.  
Minnow chiếm phần lớn người chơi nhưng đóng góp ít về doanh thu.

### Thể loại game

Các thể loại tạo doanh thu tốt nhất gồm:

- Racing
- Battle Royale
- Strategy

Các thể loại này có tính cạnh tranh cao và dễ kích hoạt hành vi chi tiêu.

### Quốc gia

India là thị trường tạo doanh thu cao nhất.  

Các thị trường khác có đóng góp đáng kể gồm:

- Afghanistan
- Bangladesh
- Canada
- South Korea

### Thiết bị

- Android tạo doanh thu dựa trên **quy mô người chơi**
- iOS tạo doanh thu dựa trên **giá trị chi tiêu**

### Hành vi người chơi

Playtime, session count và frequency có mối liên hệ chặt chẽ với monetization.

Dữ liệu cho thấy **giai đoạn 9–11 sessions** là thời điểm người chơi chi tiêu mạnh nhất.

---

## Khuyến nghị

Một số hướng tối ưu monetization được đề xuất:

- Giữ chân nhóm Whale bằng **VIP tier và loyalty reward**
- Xây dựng chiến lược **upsell từ Dolphin lên Whale**
- Tăng engagement của Minnow bằng **nhiệm vụ hằng ngày và gói entry price**
- Kích hoạt các **offer giá trị cao ở giai đoạn 9–11 sessions**
- Tối ưu **payment funnel và phương thức thanh toán phổ biến**
- Localize **offer và pricing theo từng quốc gia**

---

## Hạn chế

- Dataset mang tính mô phỏng nên cần xác nhận bằng dữ liệu thực tế
- Chưa phân tích sâu về **retention và churn**
- Chưa đánh giá hiệu quả chi phí marketing theo từng thị trường

---

## Hướng phát triển tiếp theo

Các hướng phân tích có thể mở rộng:

- Cohort analysis
- Retention và churn analysis
- Predictive modeling cho hành vi chi tiêu
- Phân tích sâu theo từng khu vực thị trường

---

## Công cụ sử dụng

- SQL – xử lý dữ liệu và tính toán KPI
- Power BI – trực quan hóa dashboard
- Excel / CSV – tiền xử lý dữ liệu
- GitHub – quản lý project và version control
---

## Dashboard Demo

<img width="1324" height="763" alt="image" src="https://github.com/user-attachments/assets/83640eee-6b78-40c4-84d9-156ebefab4b8" />
<img width="1325" height="766" alt="image" src="https://github.com/user-attachments/assets/75aa68cd-19db-4921-8d4d-8af7425be6a1" />
<img width="1324" height="764" alt="image" src="https://github.com/user-attachments/assets/4f694111-802c-453c-91d1-afec267e9eff" />
