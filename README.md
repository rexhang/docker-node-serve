# Docker使用教程

使用docker隔离环境运行一个node服务输出接口数据，包含上传文件sh脚本等。

### 开始

安装 Docker Desktop(WSL2、Hyper-V)，优化镜像下载源(建议阿里云、网易、百度)，更改默认镜像数据磁盘到非C盘，其他偏好设置设定。

### how to use?

- 本地node脚本编写
 - 编写Dockerfile
 - 构建镜像image
 - 从构建的镜像生成独立的容器并启动Dockerfile内的相关服务
 - 从宿主机访问接口，默认端口8088，127.0.0.1:8088
 - 上传文件到容器虚拟化目录
