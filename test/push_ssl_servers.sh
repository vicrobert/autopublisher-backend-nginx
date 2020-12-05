#!/bin/bash

redis-cli set /ngx_entry/ssl_servers/server1/server_name www.scity.cn
redis-cli set /ngx_entry/ssl_servers/server1/listen_port 443
redis-cli set /ngx_entry/ssl_servers/server1/ssl_certificate "/etc/nginx/ssl/server.crt"
redis-cli set /ngx_entry/ssl_servers/server1/ssl_certificate_key "/etc/nginx/ssl/server.key"
redis-cli set /ngx_entry/ssl_servers/server1/ssl_session_timeout "5m"
redis-cli set /ngx_entry/ssl_servers/server1/ssl_session_cache "shared:SSL:10m"
redis-cli set /ngx_entry/ssl_servers/server1/ssl_protocols "SSLv2 SSLv3 TLSv1 TLSv1.1 TLSv1.2"
redis-cli set /ngx_entry/ssl_servers/server1/ssl_ciphers "HIGH:!RC4:!MD5:!aNULL:!eNULL:!NULL:!DH:!EDH:!EXP:+MEDIUM"
redis-cli set /ngx_entry/ssl_servers/server1/ssl_prefer_server_ciphers "on"

redis-cli set /ngx_entry/ssl_servers/server1/location_paths/1/location "/"
redis-cli set /ngx_entry/ssl_servers/server1/location_paths/1/host "app1.scity.cn"
redis-cli set /ngx_entry/ssl_servers/server1/location_paths/1/proxy_redirect off

redis-cli set /ngx_entry/ssl_servers/server1/location_paths/2/location "/operationmgr"
redis-cli set /ngx_entry/ssl_servers/server1/location_paths/2/host "operationmgr.scity.cn"
redis-cli set /ngx_entry/ssl_servers/server1/location_paths/2/proxy_redirect off





redis-cli set /ngx_entry/ssl_servers/server2/server_name www.whsmy.com
redis-cli set /ngx_entry/ssl_servers/server2/listen_port 1443
redis-cli set /ngx_entry/ssl_servers/server2/ssl_certificate "/etc/nginx/ssl/server.crt"
redis-cli set /ngx_entry/ssl_servers/server2/ssl_certificate_key "/etc/nginx/ssl/server.key"
redis-cli set /ngx_entry/ssl_servers/server2/ssl_session_timeout "5m"
redis-cli set /ngx_entry/ssl_servers/server2/ssl_session_cache "shared:SSL:10m"
redis-cli set /ngx_entry/ssl_servers/server2/ssl_protocols "SSLv2 SSLv3 TLSv1 TLSv1.1 TLSv1.2"
redis-cli set /ngx_entry/ssl_servers/server2/ssl_ciphers "HIGH:!RC4:!MD5:!aNULL:!eNULL:!NULL:!DH:!EDH:!EXP:+MEDIUM"
redis-cli set /ngx_entry/ssl_servers/server2/ssl_prefer_server_ciphers "on"

redis-cli set /ngx_entry/ssl_servers/server2/location_paths/1/location "/"
redis-cli set /ngx_entry/ssl_servers/server2/location_paths/1/host "wh_app1.whsmy.cn"
redis-cli set /ngx_entry/ssl_servers/server2/location_paths/1/proxy_redirect off

redis-cli set /ngx_entry/ssl_servers/server2/location_paths/2/location "/operationmgr"
redis-cli set /ngx_entry/ssl_servers/server2/location_paths/2/host "operationmgr.scity.cn"
redis-cli set /ngx_entry/ssl_servers/server2/location_paths/2/proxy_redirect off

