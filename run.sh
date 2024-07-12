#!/bin/bash
# 使脚本可执行：`chmod +x init_env_linux.sh`
# 在终端中运行该脚本：`./init_env_linux.sh`

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt -U

# Set environment variable for FFMPEG_PATH
export FFMPEG_PATH="$(pwd)/ffmpeg-4.4-amd64-static"
export PATH=$FFMPEG_PATH:$PATH

echo "FFMPEG_PATH is set to $FFMPEG_PATH"
echo "Environment setup complete. You can now run your application."

# 服务启动
python -u webui.py
