# macOS YouTube Downloader
A simple one-click YouTube downloader for macOS using `yt-dlp`.  
This script automatically downloads **MP4 files with both video and audio merged**.

## Requirements
Install `yt-dlp`:
```bash
brew install yt-dlp
```

## Usage
1. Download this repo  
2. Make the script executable:
```bash
chmod +x yt_download.command
```
3. Double-click the file  
4. Paste the YouTube URL  
5. The video will be saved to:
```
/Users/euphoria/Desktop/進擊的巨人 影片素材
```

## Change Download Folder
Edit this line in the script:
```bash
OUTPUT_DIR="/Users/euphoria/Desktop/進擊的巨人 影片素材"
```
Replace it with your own folder, for example:
```bash
OUTPUT_DIR="/Users/yourname/Downloads"
```

## Legal
Please follow YouTube’s Terms of Service.
