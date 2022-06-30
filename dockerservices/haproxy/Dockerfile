#FROM haproxy:lts-alpine3.16
FROM  haproxytech/haproxy-alpine:2.4
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
EXPOSE 80
CMD ["/usr/local/sbin/haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"] 
