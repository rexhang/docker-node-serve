# Docker使用教程

使用docker隔离环境运行一个node服务输出接口数据，宿主机可以和沙箱环境通信，端口映射等，还包含卷宗映射上传文件sh脚本等，推荐命令行模式使用。

### 开始

安装 Docker Desktop(WSL2、Hyper-V)，优化镜像下载源(建议阿里云、网易、百度)，更改默认镜像数据磁盘到非C盘，其他偏好设置设定。

### how to use?

- 本地node脚本编写
 - 编写Dockerfile
 - 构建镜像image
 - 从构建的镜像生成独立的容器并启动Dockerfile内的相关服务
 - 从宿主机访问接口，默认端口8088，127.0.0.1:8088
 - 上传文件到容器虚拟化目录

### 最后引用下某度的概念
> Docker 是一个开源的应用容器引擎，让开发者可以打包他们的应用以及依赖包到一个可移植的镜像中，然后发布到任何流行的 Linux或Windows操作系统的机器上，也可以实现虚拟化。容器是完全使用沙箱机制，相互之间不会有任何接口。

操作系统层虚拟化技术，最主要是拥有隔离环境的特性，一个image包就可在不同机器上构建相同的运行环境，你可以理解成虚拟机就好了，只不过这个更加高效

可以用来做些一些测试实验不会污染系统环境，不用随时可以删除，还可以从Docker Hub云端平台随时down image 本地直接构建容器测试、开发都很方便，当然你有不错的也可以上传共享publish。

![images](src/images/Snipaste_2023-07-27_20-14-12.png)

![containers](src/images/Snipaste_2023-07-27_20-14-01.png)