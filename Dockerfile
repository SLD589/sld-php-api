FROM php:8.1-apache

# 启用 Apache 重写模块
RUN a2enmod rewrite

# 将项目文件复制到容器的网站根目录
COPY . /var/www/html/

# 设置工作目录
WORKDIR /var/www/html/

# 让 Apache 监听 Railway 分配的端口
CMD sed -i "s/80/${PORT}/" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf && apache2-foreground
