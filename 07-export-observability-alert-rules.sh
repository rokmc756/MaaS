#!/bin/bash
#
# [ Export Observability alert rules ]
# MAAS has a curated collection of alert rules for Prometheus and Loki.
# You can export these rules using the following command, where o11y_alertrules_dest is the directory where the files should me placed.

ansible-playbook --extra-vars="o11y_alertrules_dest=/tmp" ./alertrules.yaml

