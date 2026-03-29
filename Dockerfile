FROM headwindmdm/janus-gateway

RUN mkdir -p /usr/local/etc/janus && \
    echo '[general]' > /usr/local/etc/janus/janus.transport.http.cfg && \
    echo 'http = true' >> /usr/local/etc/janus/janus.transport.http.cfg && \
    echo 'ip = 0.0.0.0' >> /usr/local/etc/janus/janus.transport.http.cfg && \
    echo 'port = 8088' >> /usr/local/etc/janus/janus.transport.http.cfg && \
    echo 'admin_port = 7088' >> /usr/local/etc/janus/janus.transport.http.cfg && \
    echo 'base_path = /janus' >> /usr/local/etc/janus/janus.transport.http.cfg

EXPOSE 8088

CMD ["janus"]
