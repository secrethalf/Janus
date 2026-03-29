FROM headwindmdm/janus-gateway

RUN echo 'general: {\n    ip = "0.0.0.0"\n    port = 8088\n}' > /usr/local/etc/janus/janus.transport.http.jcfg

RUN echo 'general: {\n    ip = "0.0.0.0"\n    port = 8188\n    ws_port = 8188\n}' > /usr/local/etc/janus/janus.transport.websockets.jcfg

EXPOSE 8088
EXPOSE 8188
