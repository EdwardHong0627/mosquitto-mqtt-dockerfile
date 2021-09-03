FROM eclipse-mosquitto:2.0.11

RUN mkdir -p /var/run/mosquitto
RUN chown mosquitto:mosquitto /var/run/mosquitto
RUN mkdir -p /mqtt/config /mqtt/data /mqtt/log
COPY config /mqtt/config
RUN chown -R mosquitto:mosquitto /mqtt
VOLUME ["/mqtt/config", "/mqtt/data", "/mqtt/log"]
ARG USER
ARG PASSWORD
RUN echo "${USER}:${PASSWORD}" >/mqtt/config/iii.pwd
RUN cat /mqtt/config/iii.pwd
RUN chown -R mosquitto:mosquitto /mqtt/config/iii.pwd
RUN mosquitto_passwd -U /mqtt/config/iii.pwd
EXPOSE 1887 8087

ADD docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mqtt/config/mosquitto.conf"]
