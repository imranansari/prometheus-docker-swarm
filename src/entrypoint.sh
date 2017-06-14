#!/bin/sh -e

if [ ! -z "$ALERTMANAGER_ENDPOINT" ]; then
    alertopt="-alertmanager.url=${ALERTMANAGER_ENDPOINT}"
fi

sed -i "s/{{ MAX_MEMORY_USAGE_PER_CONTAINER }}/$MAX_MEMORY_USAGE_PER_CONTAINER/g" /etc/prometheus/tasks.rules

/bin/prometheus \
-config.file=/etc/prometheus/prometheus.yml \
-storage.local.path=/prometheus \
-web.console.libraries=/etc/prometheus/console_libraries \
-web.console.templates=/etc/prometheus/consoles \
$alertopt \
"$@"
