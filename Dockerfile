FROM prom/prometheus:v1.7.1

COPY src /

ENTRYPOINT [ "/entrypoint.sh" ]

CMD []
