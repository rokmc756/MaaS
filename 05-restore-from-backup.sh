#!/bin/bash
#
# [ Restore from Backup ]
# Since backup is per-host, it is recommended to set the maas_backup_file variable as a host variable, or filter execution to a specific host,
# but maas_backup_file should be set to a gzipped tar file from the backup action and maas_installation_type should be set as well.
#
# The below example assumes maas_backup_file is set in ./hosts

ansible-playbook -i ./hosts --extra-vars="maas_installation_type=deb" ./restore.yaml

