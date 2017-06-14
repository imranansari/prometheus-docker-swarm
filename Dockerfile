FROM prom/prometheus:v1.7.1

# In Bytes
ENV MAX_MEMORY_USAGE_PER_CONTAINER=1500000000

COPY src /

ENTRYPOINT [ "/entrypoint.sh" ]

CMD []
