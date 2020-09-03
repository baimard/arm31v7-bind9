FROM debian
#RUN addgroup 53 named
#RUN adduser -H -u 53 -G named -g "named" -h /etc/bind -s /sbin/nologin -D named
RUN apt update && apt-get install -y bind9 bind9utils
EXPOSE 53 53/udp
CMD [ "/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind" ]
