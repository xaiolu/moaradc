#!/bin/sh

DOWNLOAD_URL="https://github.com/ansoncloud8/am-alist-freebsd/releases/latest/download/alist"

curl -L $DOWNLOAD_URL -o alist

chmod +x alist

if [ -f "./data/config.json" ]; then
    echo "Alist-FreeBSD最新版本已经下载覆盖完成！"
else
    nohup ./alist server > /dev/null 2>&1 &
    clear
    echo "已生成配置文件，请在 Panel 中修改配置文件！"
    echo "详细的安装步骤请参考，https://github.com/ansoncloud8/am-alist-freebsd"
    echo
fi