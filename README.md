# Game-Analyst-Project
# Báo cáo Phân tích Dashboard Monetization

## 1. Giới thiệu dự án

Dự án này tập trung phân tích **hiệu quả monetization của một sản phẩm/game mobile** thông qua dashboard tổng hợp dữ liệu người chơi và doanh thu.  
Mục tiêu của báo cáo là làm rõ:

- Doanh thu được hình thành như thế nào
- Doanh thu đến từ đâu
- Nhóm người chơi nào tạo ra doanh thu chính
- Những hành vi nào thúc đẩy chi tiêu
- Các hướng tối ưu hóa để tăng trưởng doanh thu bền vững

Phân tích này hỗ trợ nhóm **vận hành** và **sản phẩm** trong việc ra quyết định nhằm tối ưu doanh thu và giảm rủi ro phụ thuộc vào một nhóm người chơi nhỏ.

---

## 2. Mục tiêu phân tích

Báo cáo tập trung trả lời 3 câu hỏi chính:

### 2.1. Doanh thu được hình thành qua những chỉ số nào?
Các chỉ số trọng tâm gồm:

- **Revenue**
- **ARPU** (Average Revenue Per User)
- **ARPPU** (Average Revenue Per Paying User)
- **Conversion Rate**

### 2.2. Doanh thu đến từ đâu?
Phân tích theo các chiều:

- **Game Genre**
- **Country**
- **Device**
- **Payment Method**

### 2.3. Nhóm người chơi nào đóng vai trò chính trong việc tạo doanh thu?
Phân tích theo:

- **Spending Segment**: Whale, Dolphin, Minnow
- **Frequency**
- **Playtime**
- **Session Count**

---

## 3. Khung logic phân tích

Phân tích được triển khai theo mô hình **3 tầng**:

### 3.1. Tầng kết quả (Outcome)
Đánh giá hiệu quả monetization tổng thể qua các chỉ số:

- Tổng doanh thu
- Số payer
- Conversion rate
- ARPU
- ARPPU

### 3.2. Tầng nguồn (Source)
Xác định doanh thu đến từ đâu theo:

- Thể loại game
- Quốc gia
- Thiết bị
- Phương thức thanh toán

### 3.3. Tầng cơ chế hành vi (Mechanism / How)
Giải thích nguyên nhân tạo doanh thu thông qua hành vi người chơi:

- Tần suất chơi
- Thời lượng chơi
- Số phiên chơi
- Phân khúc chi tiêu

---

## 4. Dữ liệu sử dụng

Dataset sử dụng trong báo cáo là dữ liệu mô phỏng hành vi người chơi game mobile và hoạt động mua hàng trong ứng dụng.

### Thông tin dataset:
- **Số bản ghi:** 3.024
- **Số người chơi:** 3.024
- **Số biến:** 13

### Nhóm dữ liệu chính:
- **Thông tin nhân khẩu học**
- **Hành vi chơi game**
- **Hành vi chi tiêu**

### Mô hình phân khúc chi tiêu:
Dataset được xây dựng theo mô hình:

- **Whales**: nhóm người chơi chi tiêu cao, số lượng ít nhưng đóng góp doanh thu lớn
- **Dolphins**: nhóm chi tiêu trung bình, đóng vai trò duy trì tăng trưởng
- **Minnows**: nhóm chi tiêu thấp, đóng góp nhỏ về doanh thu nhưng lớn về quy mô người chơi

Dataset có thêm một tỷ lệ nhỏ giá trị thiếu để mô phỏng dữ liệu thực tế.

---

## 5. Tổng quan kết quả monetization

### 5.1. Hiệu suất tổng thể: Users → Payers → Revenue

Dashboard cho thấy hiệu suất monetization rất cao:

- **Total Users:** 3.024
- **Paying Users:** 2.887
- **Conversion Rate:** 95,47%
- **Total Revenue:** 296,26K
- **ARPU:** 97,97
- **ARPPU:** 102,62

Khoảng cách nhỏ giữa ARPU và ARPPU cho thấy phần lớn người chơi đều có hành vi chi tiêu, thay vì doanh thu chỉ tập trung ở một nhóm payer nhỏ.

### 5.2. Whale Revenue

- **Doanh thu từ Whale:** 175,58K
- Chiếm khoảng **59% tổng doanh thu**

Điều này cho thấy doanh thu vẫn phụ thuộc mạnh vào nhóm Whale, đúng với cấu trúc phổ biến của game mobile.

---

## 6. Insight chính theo từng chiều phân tích

### 6.1. Revenue theo Game Genre

#### Nhóm tạo doanh thu cao:
- Racing
- Battle Royale
- Strategy
- MOBA
- Fighting

Đây là các genre có tính cạnh tranh cao, dễ kích hoạt hành vi chi tiêu thông qua:

- Battle pass
- Bundle giới hạn
- Vật phẩm tăng sức mạnh
- Nội dung theo mùa

#### Nhóm có nhiều user nhưng doanh thu chưa tương xứng:
- MMORPG
- Simulation
- Role Playing
- Card
- Sports

Nhóm này có tiềm năng tăng ARPU nếu tối ưu tốt giá gói, thời điểm hiển thị offer và cơ chế mua theo tiến trình.

#### Nhóm đóng góp thấp:
- Puzzle
- Sandbox
- Action RPG

Các genre này hiện chưa cho thấy tiềm năng tạo doanh thu mạnh trong ngắn hạn.

---

### 6.2. Revenue theo Payment Method

Thứ tự đóng góp doanh thu giảm dần:

- Debit Card
- PayPal
- Gift Card
- Carrier Billing
- Google Pay
- Credit Card
- Apple Pay

Điều này cho thấy người chơi ưu tiên các phương thức thanh toán quen thuộc và ít ma sát.

---

### 6.3. Revenue theo Country

#### Thị trường dẫn đầu:
- India

#### Nhóm doanh thu cao tiếp theo:
- Afghanistan
- Bangladesh
- Canada
- South Korea
- Denmark

#### Nhóm doanh thu trung bình:
- Germany
- Italy
- Russia
- Japan
- USA
- UK

#### Nhóm doanh thu thấp:
- Sweden
- Austria
- France

Doanh thu đang tập trung mạnh theo địa lý, đặc biệt phụ thuộc vào India.

---

### 6.4. Revenue theo Device

#### Android
- Tạo doanh thu theo **quy mô**
- Nhiều người chơi hơn
- Conversion rate tốt hơn
- Phù hợp với các gói giá thấp đến trung bình

#### iOS
- Tạo doanh thu theo **giá trị**
- ARPPU cao hơn
- Người chơi có xu hướng chi tiêu cao hơn trên mỗi giao dịch
- Phù hợp với bundle premium và gói giá trị cao

---

### 6.5. Revenue theo Spending Segment

#### Whale
- Nhóm tạo doanh thu lớn nhất
- Là trụ cột doanh thu nhưng có rủi ro phụ thuộc cao

#### Dolphin
- Là nhóm tăng trưởng ổn định
- Có tiềm năng chuyển đổi thành Whale nếu được kích hoạt đúng cách

#### Minnow
- Đóng góp ít về doanh thu
- Quan trọng về quy mô user và là nguồn payer tương lai

---

## 7. Insight về hành vi người chơi

### 7.1. Frequency Segment và monetization

- **High Frequency** có ARPU và ARPPU cao nhất
- **Medium Frequency** có tiềm năng tăng conversion
- **Low Frequency** có một phần user sẵn sàng chi sớm nhưng không duy trì được engagement

### 7.2. Age Group

Nhóm tuổi **20–40** là nhóm vừa có số lượng user lớn, vừa tạo phần lớn doanh thu.  
Đây là core revenue group của sản phẩm.

### 7.3. Playtime theo Frequency

- High Frequency có playtime cao nhất
- Medium Frequency ở mức trung bình
- Low Frequency thấp nhất

Playtime càng cao thì càng có nhiều điểm tiếp xúc với các cơ chế monetization.

### 7.4. ARPPU và Conversion theo Device

- **iOS:** ARPPU cao hơn
- **Android:** Conversion rate tốt hơn

Điều này phản ánh rõ:

- iOS = **value-based monetization**
- Android = **volume-based monetization**

### 7.5. Mối quan hệ giữa ARPU, Playtime và Revenue theo Genre

Không phải genre nào có playtime cao cũng tạo doanh thu cao.  
Doanh thu chỉ tăng mạnh khi playtime được kết hợp với cơ chế monetization phù hợp.

### 7.6. Session Count và Revenue

Dữ liệu cho thấy vùng **9–11 sessions** là **“điểm vàng”** của monetization.

Tại giai đoạn này:
- Whale chi tiêu mạnh nhất
- Dolphin cũng có xu hướng tăng chi tiêu rõ rệt

Đây là thời điểm phù hợp để triển khai:
- Power pack
- Limited bundle
- Upgrade pack
- Offer theo hành vi

---

## 8. Tổng hợp nhận xét chính

Từ dashboard có thể rút ra một số kết luận chính:

- Hệ thống monetization đang vận hành rất hiệu quả
- Tỷ lệ payer rất cao, cho thấy hành vi chi tiêu đã được tích hợp sâu vào trải nghiệm game
- Doanh thu vẫn phụ thuộc đáng kể vào nhóm Whale
- India là thị trường trụ cột về revenue
- Android tạo doanh thu theo quy mô, iOS tạo doanh thu theo giá trị
- Frequency, Playtime và Session Count có quan hệ chặt chẽ với chi tiêu
- Vùng 9–11 sessions là thời điểm monetization hiệu quả nhất
- Các genre cạnh tranh như Racing, Battle Royale, Strategy chuyển đổi playtime thành revenue tốt hơn các genre thiên về trải nghiệm dài hạn

---

## 9. Định hướng tối ưu monetization

### 9.1. Tối ưu theo phân khúc người chơi
- Giữ chân Whale bằng VIP tier, loyalty reward và ưu đãi độc quyền
- Xây lộ trình upsell từ Dolphin lên Whale
- Tăng engagement của Minnow bằng nhiệm vụ hằng ngày và gói entry price

### 9.2. Tối ưu theo hành vi chơi
- Kích hoạt offer mạnh ở vùng **9–11 sessions**
- Tăng frequency bằng daily/weekly quest
- Dùng comeback reward và push notification để re-engage user rời game

### 9.3. Tối ưu theo thiết bị
- **Android:** tập trung gói low–mid price và tăng purchase frequency
- **iOS:** tập trung premium pack, bundle giá cao và chương trình loyalty

### 9.4. Tối ưu theo thị trường
- Bảo vệ doanh thu tại thị trường trụ cột
- Localize offer và price ladder theo từng quốc gia
- Phân bổ ngân sách marketing theo hiệu quả ARPU và conversion rate

### 9.5. Tối ưu theo thiết kế monetization
- Tăng các điểm kích hoạt mua trong gameplay
- A/B test giá gói, bundle và thời điểm hiển thị offer
- Tối ưu payment funnel để giảm ma sát trong thanh toán

---

## 10. Cấu trúc thư mục gợi ý

```text
Game-Monetization-Analysis
│
├── dashboard
│   └── monetization_dashboard.png
│
├── sql
│   └── monetization_analysis.sql
│
├── data
│   └── sample_dataset.csv
│
└── README.md
