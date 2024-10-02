#!/bin/bash
#

ansible-playbook -i ./hosts\
    --extra-vars="maas_version=3.2 maas_postgres_password=example maas_installation_type=deb maas_url=http://example.com:5240/MAAS"\
    ./site.yaml

