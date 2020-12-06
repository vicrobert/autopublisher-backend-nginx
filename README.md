# autopublisher-backend-nginx  

整合confd后的nginx，能通过etcd、redis等数据库动态更新nginx.conf。  
  
## 一、使用方法：  
1.git clone https://github.com/vicrobert/autopublisher-backend-nginx.git  
2.cd autopublisher-backend-nginx && docker build -t autopublisher-backend-nginx .  
3.docker run -e CONFIG_BACKEND=redis -e CONFIG_BACKEND_ENDPOINT=X.X.X.X:6379 -e CONFIG_BACKEND_INTERVAL=5 -d -p 8080:80 autopublisher-backend-nginx  

## 二、数据库键-值结构说明
·
/ngx_entry  
|__ /upstream                                  ## http代理  
|   |__ /enabled : "true" or "false"  
|   |__ /servers  
|       |__ /ups_svr1 : "ip:port"              ## 任意不重复key名  
|       |__ /... ...  : "ip:port"  
|__ /servers                                   ## http server  
|   |__ /svr1                                  ## 任意不重复key名  
|       |__ /server_name : "app1.domain.com"  
|       |__ /listen_port : "8080"  
|       |__ /location_paths  
|           |__ /path1                         ##任意不重复key名  
·

