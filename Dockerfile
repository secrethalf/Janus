FROM headwindmdm/janus-gateway

RUN echo '#!/bin/sh' > /start.sh && \
    echo 'PORT=${PORT:-8088}' >> /start.sh && \
    echo 'cat > /usr/local/etc/janus/janus.transport.http.cfg << EOF' >> /start.sh && \
    echo '[general]' >> /start.sh && \
    echo 'ip = 0.0.0.0' >> /start.sh && \
    echo 'port = ${PORT}' >> /start.sh && \
    echo 'admin_port = 7088' >> /start.sh && \
    echo 'base_path = /janus' >> /start.sh && \
    echo 'EOF' >> /start.sh && \
    echo 'exec janus' >> /start.sh && \
    chmod +x /start.sh

EXPOSE 8088

CMD ["/start.sh"]
