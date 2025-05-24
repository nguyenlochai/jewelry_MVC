# Sử dụng image Tomcat 9
FROM tomcat:9.0

# Xóa các ứng dụng mặc định trong thư mục webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ thư mục target vào webapps với tên ROOT.war
COPY target/app.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080 (Render sẽ tự map)
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]