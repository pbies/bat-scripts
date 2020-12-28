@echo off
chcp 65001
youtube-dl -i -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio --merge-output-format mp4 "%1" -o "%%(upload_date)s %%(title)s.%%(ext)s"
echo 
pause
