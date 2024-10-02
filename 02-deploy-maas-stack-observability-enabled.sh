#!/bin/bash
#
# [ Deploy the MAAS stack with Observability enabled ]

ansible-playbook -i ./hosts \
    --extra-vars="maas_version=3.3 \
        maas_postgres_password=example \
        maas_installation_type=snap \
        maas_url=http://example.com:5240/MAAS \
        o11y_enable=true \
        o11y_prometheus_url=http://prometheus-server:9090/api/v1/write \
        o11y_loki_url=http://loki-server:3100/loki/api/v1/push" \
    ./site.yaml

