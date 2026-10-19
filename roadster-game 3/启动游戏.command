#!/bin/bash
# Roadster 气动逃逸 · Mac 一键启动
cd "$(dirname "$0")"
PORT=8000
# 如果端口被占用就找下一个
while lsof -i :$PORT >/dev/null 2>&1; do
  PORT=$((PORT+1))
done
echo "======================================="
echo "  Roadster 气动逃逸 · 趣味增强版"
echo "  本机地址: http://localhost:$PORT"
echo "  按 Ctrl+C 退出"
echo "======================================="
# 等服务器起来后自动打开浏览器
( sleep 1 && open "http://localhost:$PORT" ) &
python3 -m http.server $PORT
