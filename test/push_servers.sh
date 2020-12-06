#!/bin/bash

redis-cli set /ngx_entry/servers/server1/server_name domain1.scity.cn
redis-cli set /ngx_entry/servers/server1/listen_port 8080
redis-cli set /ngx_entry/servers/server1/location_paths/1/location "/"
redis-cli set /ngx_entry/servers/server1/location_paths/1/host "app1.scity.cn"
redis-cli set /ngx_entry/servers/server1/location_paths/1/proxy_redirect off
redis-cli set /ngx_entry/servers/server1/location_paths/2/location "/app1"
redis-cli set /ngx_entry/servers/server1/location_paths/2/host "app1.scity.cn"
redis-cli set /ngx_entry/servers/server1/location_paths/2/proxy_redirect off

redis-cli set /ngx_entry/servers/server2/server_name domain2.scity.cn
redis-cli set /ngx_entry/servers/server2/listen_port 8081
redis-cli set /ngx_entry/servers/server2/location_paths/1/location "/"
redis-cli set /ngx_entry/servers/server2/location_paths/1/host "app2.scity.cn"
redis-cli set /ngx_entry/servers/server2/location_paths/1/proxy_redirect off
redis-cli set /ngx_entry/servers/server2/location_paths/2/location "/app2"
redis-cli set /ngx_entry/servers/server2/location_paths/2/host "app2.scity.cn"
redis-cli set /ngx_entry/servers/server2/location_paths/2/proxy_redirect off

redis-cli set /ngx_entry/servers/3/server_name domain3.scity.cn
redis-cli set /ngx_entry/servers/3/listen_port 8082
redis-cli set /ngx_entry/servers/3/location_paths/1/location "/"
redis-cli set /ngx_entry/servers/3/location_paths/1/host "app3.scity.cn"
redis-cli set /ngx_entry/servers/3/location_paths/1/proxy_redirect off
redis-cli set /ngx_entry/servers/3/location_paths/2/location "/app3"
redis-cli set /ngx_entry/servers/3/location_paths/2/host "app3.scity.cn"
redis-cli set /ngx_entry/servers/3/location_paths/2/proxy_redirect off
