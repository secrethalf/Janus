FROM headwindmdm/janus-gateway
COPY start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 8088
CMD ["/start.sh"]
