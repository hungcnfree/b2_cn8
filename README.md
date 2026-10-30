# cong-nghe-vui

Kho lưu giọng đọc (mp3) và bản mã của các tiện ích học tập Công nghệ do thầy Hùng làm.
Tiện ích chạy trên **AI Studio**; **GitHub Pages** chỉ là nơi lưu các file mp3 (và bản `index.html` để thử).

```
cong-nghe-vui/
  README.md
  .nojekyll
  viewer-ve-ky-thuat-cn8/
    index.html            Viewer 3D Vẽ kỹ thuật Công nghệ 8 (dán vào AI Studio)
    kiem-tra-mp3.html     Trang thử: AI Studio có phát được mp3 từ GitHub không
    mc/
      001.mp3 ... 045.mp3 Giọng MC (45 câu)
      danh-sach-thoai.txt Số file và câu thoại tương ứng
      cit-mc-69-cau.txt   69 câu để tạo giọng hàng loạt
```

## 1. Đưa lên GitHub (tài khoản hungcnfree)
Cách dùng lệnh (trong thư mục này):
```
git init
git add .
git commit -m "Viewer 3D Cong nghe 8 v4"
git branch -M main
git remote add origin https://github.com/hungcnfree/cong-nghe-vui.git
git push -u origin main
```
(Tạo trước kho trống `cong-nghe-vui`, để chế độ **Public**.)
Cách dùng web: Add file > Upload files, kéo cả thư mục `viewer-ve-ky-thuat-cn8` vào (mỗi lần tối đa 100 file).

## 2. Bật GitHub Pages
Kho > Settings > Pages > Build and deployment > Source: **Deploy from a branch** > Branch: **main**, thư mục **/ (root)** > Save.
Đợi 1 đến 3 phút. Thử mở trong trình duyệt, nghe được tiếng là đúng:
`https://hungcnfree.github.io/cong-nghe-vui/viewer-ve-ky-thuat-cn8/mc/001.mp3`

## 3. Dùng trên AI Studio
1. Dán nội dung `kiem-tra-mp3.html` vào AI Studio, bấm "Phát thử". Thấy dòng xanh và nghe tiếng là AI Studio phát được mp3 từ GitHub.
2. Dán nội dung `index.html` vào AI Studio. Khi chạy ở AI Studio, viewer tự lấy mp3 ở địa chỉ ghi trong `MC_REMOTE` (đầu file).
3. Nếu bước 1 không phát được (AI Studio chặn), dùng bản dự phòng `Viewer_3D_Ve_ky_thuat_CN8_v3.html` (mp3 nhúng sẵn, nặng hơn).

## 4. Thay giọng / thêm giọng (một giọng MC nữ cho tất cả)
1. Lấy văn bản trong `viewer-ve-ky-thuat-cn8/mc/cit-mc-69-cau.txt` (69 dòng, mỗi dòng một câu, đúng thứ tự). Chuyển hàng loạt bằng CIT Voice Studio với giọng nữ dễ thương.
2. Dùng tệp `cit-hang-loat-69.txt` (hoặc bản `-ke-chuyen` có thẻ cảm xúc) trong CIT. CIT xuất file dạng `001-P001.mp3`; bỏ `mc/doi-ten-cit.bat` vào cùng thư mục chứa các file đó rồi bấm đúp để đổi thành `001.mp3` … `069.mp3`.
3. Tải 69 file lên thư mục `mc/` trên GitHub (thay file cũ 001 đến 045), rồi đổi `MC_VER='?v=1'` thành `?v=2` trong `index.html`.
4. Dán các dòng trong `mc/dong-them-vao-bang-giong.txt` (câu 046 đến 069) vào **BẢNG GIỌNG ĐỌC** của `index.html`, sau khi các file đó đã có trên GitHub.
5. Thêm câu mới sau này: tạo mp3 theo số tiếp theo, thêm một dòng `"câu thoại đúng từng chữ": "070.mp3",` vào bảng giọng. Mở link có `?kiemtra=1` để xem câu nào còn thiếu giọng.

## 5. Tìm chỗ sửa trong `index.html` (dùng Ctrl+F)
| Muốn sửa | Tìm cụm |
|---|---|
| Địa chỉ mp3, số phiên bản | `CẤU HÌNH GIỌNG ĐỌC` |
| Danh sách giọng đọc | `BẢNG GIỌNG ĐỌC` |
| Câu hỏi, đáp án luyện tập | `NỘI DUNG BÀI TẬP` |
| Vật thể ở tab 2 | `VẬT THỂ MỚI THÊM` |
| Vật thể, nét vẽ, kích thước của tab 1 (quy trình vẽ) | `DỮ LIỆU TAB 1` |

## Lưu ý
- Kho Public: ai có link đều tải được mp3 và mã. Không có dữ liệu cá nhân của học sinh trong kho.
- Không đổi tên kho và thư mục `viewer-ve-ky-thuat-cn8` nếu đã dán `index.html` vào AI Studio (đường dẫn nằm trong `MC_REMOTE`). Đổi thì sửa `MC_REMOTE` rồi dán lại.
- Điểm và túi tích lũy của học sinh lưu trên trình duyệt theo từng địa chỉ trang, nên làm ở AI Studio và làm ở GitHub Pages sẽ là hai bộ điểm riêng.
