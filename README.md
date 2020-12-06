# autopublisher-backend-nginx  

整合confd后的nginx，能通过etcd、redis等数据库动态更新nginx.conf。  
  
## 一、使用方法：
```
# git clone https://github.com/vicrobert/autopublisher-backend-nginx.git  
# cd autopublisher-backend-nginx && sudo chmod +x ./dockerbuild.sh && ./dockerbuild.sh
# sudo docker run -e DATABASE_TYPE=redis -e DATABASE_ENDPOINT=X.X.X.X:6379 -e DATABASE_PROBE_INTERVAL=5 -d -p 8080:80 autopublisher-backend-nginx  
```
## 二、数据库键-值结构说明
```
/ngx_entry
|__ /upstream                                      ## 发布http代理
|   |__ /enabled : "true" or "false"
|   |__ /servers
|       |__ /ups_svr1 : "ip:port"                  ## 任意不重复key名
|       |__ /ups_svr2 : "ip:port"
|       |__ ... ...
|__ /servers                                       ## 发布http server
|   |__ /svr1                                      ## 任意不重复key名
|   |   |__ /server_name : "app1.domain"
|   |   |__ /listen_port : "8080"
|   |   |__ /location_paths                    ## 发布应用访问路径
|   |       |__ /path1                         ## 任意不重复key名
|   |       |   |__ /location : "/web"
|   |       |   |__ /host : "app1.domain"      ## RequestHeader Host
|   |       |   |__ /proxy_redirect : "off"
|   |       |__ /path2                         ## 任意不重复key名
|   |       |   |__ /location : "/"
|   |       |   |__ /host : "app1.domain"
|   |       |   |__ /proxy_redirect : "off"
|   |       |__ ... ...
|   |__ ... ...
|__ /ssl_upstream                                  ## 发布https代理
|   |__ /enabled : "true" or "false"
|   |__ /servers
|       |__ /ups_svr1 : "ip:port"                  ## 任意不重复key名
|       |__ /ups_svr2 : "ip:port"
|       |__ ... ...
|__ /ssl_servers                                                                            ## 发布https server
    |__ /svr1                                                                               ## 任意不重复key名
    |   |__ /server_name : "app1.domain"
    |   |__ /listen_port : "8443"
    |   |__ /ssl_certificate : "/etc/nginx/ssl/app1/server.crt"
    |   |__ /ssl_certificate_key : "/etc/nginx/ssl/app1/server.key"
    |   |__ /ssl_session_timeout : "5m"
    |   |__ /ssl_session_cache : "shared:SSL:10m"
    |   |__ /ssl_protocols : "SSLv2 SSLv3 TLSv1 TLSv1.1 TLSv1.2"
    |   |__ /ssl_ciphers : "HIGH:!RC4:!MD5:!aNULL:!eNULL:!NULL:!DH:!EDH:!EXP:+MEDIUM"
    |   |__ /ssl_prefer_server_ciphers : "on"
    |   |__ /location_paths                                                             ## 发布应用访问路径
    |       |__ /path1                                                                  ## 任意不重复key名
    |       |   |__ /location : "/web"
    |       |   |__ /host : "app1.domain"                                               ## RequestHeader Host
    |       |   |__ /proxy_redirect : "off"
    |       |__ /path2                                                                  ## 任意不重复key名
    |       |   |__ /location : "/"
    |       |   |__ /host : "app1.domain"
    |       |   |__ /proxy_redirect : "off"
    |       |__ ... ...
    |__ ... ...
```

