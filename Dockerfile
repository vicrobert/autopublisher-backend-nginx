FROM nginx
MAINTAINER yangjbd@dcholdings.com
COPY ["./bin/confd", "/bin"]
COPY ["./etc/confd", "/etc/confd"]
COPY ["./docker-entrypoint.sh", "/"]
#ENTRYPOINT /docker-entrypoint.sh
