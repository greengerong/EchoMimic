@echo off
:: 双击运行该批处理文件，或在命令提示符中导航到文件所在目录并运行 init_env_windows.bat

:: Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

:: Set environment variable for FFMPEG_PATH
set "FFMPEG_PATH=%cd%\ffmpeg-4.4-amd64-static"
set PATH=%FFMPEG_PATH%;%PATH%

echo "FFMPEG_PATH is set to %FFMPEG_PATH%"
echo "Environment setup complete. You can now run your application."

:: 服务启动
python -u webui.py
