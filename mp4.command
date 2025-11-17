#!/bin/zsh

# 1. 彈窗要求輸入 YouTube 網址
URL=$(osascript -e 'Tell application "System Events" to display dialog "貼上 YouTube 網址：" default answer "" buttons {"OK"} default button "OK"' | sed -n 's/.*text returned://p')

# 2. 若沒輸入就退出
if [ -z "$URL" ]; then
  echo "沒有輸入網址。"
  exit 1
fi

# 3. 設定下載路徑（你的資料夾）
OUTPUT_DIR="/Users/euphoria/Desktop/進擊的巨人 影片素材"

# 若資料夾不存在就自動建立（避免報錯）
mkdir -p "$OUTPUT_DIR"

# 4. 下載影片（優先 h264，但沒有也會 fallback）
yt-dlp \
  -f "bv*[vcodec~='(avc1|h264)']+ba/b" \
  --merge-output-format mp4 \
  -o "$OUTPUT_DIR/%(title)s.%(ext)s" \
  "$URL"

# 5. 完成提示
osascript -e 'tell application "System Events" to display dialog "下載完成！" buttons {"OK"} default button "OK"'