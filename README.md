# autopublisher-backend-nginx
整合confd后的nginx，能通过etcd、redis等数据库动态更新nginx.conf。
一、使用方法：
1."https://github.com/vicrobert/autopublisher-backend-nginx.git" 至本地
2.工作路径下执行 "docker build -t autopublisher-backend-nginx ."
3."docker run -e CONFIG_BACKEND=redis -e CONFIG_BACKEND_ENDPOINT=X.X.X.X:6379 -e CONFIG_BACKEND_INTERVAL=5 -p 8080:80 autopublisher-backend-nginx"

