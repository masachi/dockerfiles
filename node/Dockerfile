# 基础镜像
FROM ubuntu:16.04
# 替换apt-get源到国内
RUN sed -i "s@http://deb.debian.org@http://ftp2.cn.debian.org@g" /etc/apt/sources.list
RUN sed -i "s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g" /etc/apt/sources.list
# 添加代码到打包
ADD . /code
# 设定工作目录
WORKDIR /code
# 安装curl
RUN apt-get update -y && apt-get install -y curl
# 安装node 8 或者10  10的话改成10_x
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN echo "deb http://mirrors.ustc.edu.cn/nodesource/deb/node_8.x stretch main" >> /etc/apt/sources.list \
    && echo "deb-src http://mirrors.ustc.edu.cn/nodesource/deb/node_8.x stretch main" >> /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y nodejs
# 安装包和build
RUN npm install pm2 -g && npm install && npm run build-dev
# 暴露要的端口
EXPOSE 3030
# 启动
CMD ["pm2-runtime", "dist/app.js"]
