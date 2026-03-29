FROM headwindmdm/janus-gateway

# HTTP transport config
RUN printf 'general: {\n\tip = "0.0.0.0"\n\tport = 8088\n\tadmin_port = 7088\n\tbase_path = "/janus"\n}\n' \
    > /usr/local/etc/janus/janus.transport.http.jcfg

# WebSockets transport config
RUN printf 'general: {\n\tws = true\n\tws_port = 8188\n}\n' \
    > /usr/local/etc/janus/janus.transport.websockets.jcfg

EXPOSE 8088
EXPOSE 8188
