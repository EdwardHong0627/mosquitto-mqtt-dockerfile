FROM eclipse-mosquitto:latest

RUN mkdir -p /var/run/mosquitto
RUN chown mosquitto:mosquitto /var/run/mosquitto
RUN mkdir -p /mqtt/config /mqtt/data /mqtt/log
COPY config /mqtt/config
RUN chown -R mosquitto:mosquitto /mqtt
VOLUME ["/mqtt/config", "/mqtt/data", "/mqtt/log"]
ARG USER

RUN mosquitto_passwd -U /mqtt/config/iii.pwd
EXPOSE 1887 8087

ADD docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mqtt/config/mosquitto.conf"]
