FROM nginx
MAINTAINER yangjbd@dcholdings.com
COPY ["./bin/confd", "/bin"]
COPY ["./etc/confd", "/etc/confd"]
COPY ["./ngx/docker-entrypoint.sh", "/"]
RUN chmod +x /bin/confd && chmod +x /docker-entrypoint.sh
