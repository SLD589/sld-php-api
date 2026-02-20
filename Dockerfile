FROM php:8.1-apache

# 启用Apache重写模块
RUN a2enmod rewrite

# 将项目文件复制到容器的网站根目录
COPY . /var/www/html/

# 设置工作目录
WORKDIR /var/www/html/
