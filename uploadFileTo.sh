#!/bin/bash

# 将宿主机的文件拷贝上传到容器对应的目录内

# 检查是否提供了足够的参数
if [ $# -ne 3 ]; then
    echo "Usage: $0 <host_file_path> <container_id> <container_dest_path>"
    exit 1
fi

# 获取命令行参数
host_file_path="$1"
container_id="$2"
container_dest_path="$3"

# 检查宿主机文件是否存在
if [ ! -f "$host_file_path" ]; then
    echo "Error: Host file '$host_file_path' not found."
    exit 1
fi

# 执行docker cp命令
docker cp "$host_file_path" "$container_id:$container_dest_path"

# 检查是否复制成功
if [ $? -eq 0 ]; then
    echo "File copied successfully from host to container."
else
    echo "Error: Failed to copy file from host to container."
fi

# 源命令
# docker cp C:/Users/rexhanggu/Documents/DockerFiles/1.txt e690495c2b10:/usr/src/app/

# 使用命令
# bash ./uploadFileTo.sh C:/Users/rexhanggu/Documents/DockerFiles/1.txt 1bdab9f6926c /usr/src/app/
