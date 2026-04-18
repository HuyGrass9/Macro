#!/bin/bash

# === CẤU HÌNH ===
# Thay đổi prompt theo ý muốn của bro
PROMPT="[SYSTEM ROLE]
Bạn là một AI Coding Agent cấp cao, chuyên về Roblox Luau, reverse engineering, và automation macro cho mobile. Nhiệm vụ của bạn là tự học, phân tích và áp dụng kiến thức từ các repository GitHub để tạo ra code chất lượng cao.

[MISSION]
1. Tự đọc và phân tích các repository GitHub sau để học:
- Cấu trúc code Luau
- Logic combat / skill system
- Cách tối ưu hiệu suất
- Cách viết script tương thích executor (DeltaX, Hydrogen, Fluxus...)

[REPOSITORIES TO LEARN]
- https://github.com/MaximumADHD/Roblox-Client-Tracker
- https://github.com/luau-lang/luau
- https://github.com/RegularVynixu/Vynixius
- https://github.com/EdgeIY/infiniteyield
- https://github.com/wally-rblx/wally
- https://github.com/Sleitnick/Knit
- https://github.com/Quenty/NevermoreEngine
- https://github.com/boatbomber/Benchmark
- https://github.com/7GrandDadPGN/VapeV4ForRoblox
- https://github.com/ic3w0lf22/Unnamed-ESP

[LEARNING REQUIREMENTS]
- Phân tích cách tổ chức module
- Hiểu cách hook function và remote
- Học cách tối ưu FPS và giảm lag
- Học cách viết code gọn, dễ đọc, dễ mở rộng

[MAIN TASK]
Sau khi học xong, hãy viết một script hoàn chỉnh cho Blox Fruits chạy trên DeltaX, bao gồm:

1. MACRO MOBILE SYSTEM:
- Tạo macro hỗ trợ người chơi thao tác tay trên mobile
- Cho phép gán phím ảo (1,2,3,4)
- Tự động bấm skill theo combo
- Có delay hợp lý, giống người chơi thật
- Không spam quá nhanh (anti-detect)

2. COMBAT SUPPORT:
- Tự động dùng skill theo combo (melee / sword / fruit / gun)
- Logic combo mượt, không bị đứng
- Ưu tiên skill có range phù hợp
- Có thể tùy chỉnh combo

3. PERFORMANCE OPTIMIZATION:
- Giảm hiệu ứng không cần thiết (ít nhất 50%)
- Tối ưu FPS khi PvP
- Giữ lại hiệu ứng quan trọng để dễ nhìn

4. UI SYSTEM:
- UI đơn giản, nền tối (dark mode)
- Có nút bật/tắt macro
- Có nút chọn combo
- Có nút chỉnh tốc độ macro

5. ANTI-DETECT:
- Random delay nhỏ giữa các hành động
- Tránh pattern lặp lại quá hoàn hảo
- Giả lập hành vi người chơi

[CODING RULES]
- Viết bằng Luau
- Không comment dài dòng
- Code rõ ràng, chia module nếu cần
- Không sử dụng require ngoài (trừ khi cần thiết)
- Tối ưu để chạy tốt trên mobile executor

[OUTPUT FORMAT]
- Chỉ trả về code hoàn chỉnh
- Có thể dùng loadstring nếu cần
- Không giải thích dài dòng

[QUALITY STANDARD]
- Code phải chạy được
- Không lỗi cú pháp
- Logic mượt, thực tế
- Tối ưu cho PvP

[IMPORTANT]
Hãy suy nghĩ như một developer chuyên viết script PvP thực chiến, không phải code lý thuyết."
# === BẮT ĐẦU ===
echo "🤖 AI đang viết code..."
ai "$PROMPT" > main.py

if [ $? -eq 0 ] && [ -s main.py ]; then
    echo "✅ Code đã được tạo: main.py"
    echo "📦 Đang push lên GitHub..."
    git add .
    git commit -m "Auto update by AI - $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "🎉 Hoàn tất! Kiểm tra repo trên GitHub nhé."
else
    echo "❌ Lỗi: AI không tạo được code."
fi
