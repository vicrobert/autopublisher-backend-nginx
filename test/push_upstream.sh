#!/bin/bash

redis-cli set "/ngx_entry/ssl_upstream/enabled" "true"
redis-cli set /ngx_entry/ssl_upstream/servers/server1 192.168.0.2:30443
redis-cli set /ngx_entry/ssl_upstream/servers/server2 192.168.0.3:30443
redis-cli set /ngx_entry/ssl_upstream/servers/server3 192.168.0.4:30443

redis-cli set /ngx_entry/upstream/enabled true
redis-cli set /ngx_entry/upstream/servers/server1 192.168.0.2:30080
redis-cli set /ngx_entry/upstream/servers/server2 192.168.0.3:30080
redis-cli set /ngx_entry/upstream/servers/server3 192.168.0.4:30080
