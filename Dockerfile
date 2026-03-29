FROM headwindmdm/janus-gateway

RUN printf '#!/bin/sh\nPORT=${PORT:-8088}\nprintf "general: {\n\tip = \"0.0.0.0\"\n\tport = ${PORT}\n\tadmin_port = 7088\n\tbase_path = \"/janus\"\n}\n" > /usr/local/etc/janus/janus.transport.http.jcfg\nprintf "general: {\n\tws = false\n}\n" > /usr/local/etc/janus/janus.transport.websockets.jcfg\nexec janus\n' > /start.sh

RUN chmod +x /start.sh

EXPOSE 8088

CMD ["/start.sh"]
