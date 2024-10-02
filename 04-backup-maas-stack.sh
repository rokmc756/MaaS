#!/bin/bash
#
# [ Backup the MAAS stack ]
# Backup MAAS requires the maas_backup_download_path variable to be set,
# it will designate a path local to where the playbook is being run to download backup archives.
# This path must exist prior to running the playbook. maas_installation_type is also required.

ansible-playbook -i ./hosts --extra-vars="maas_backup_download_path=/tmp/maas_backups/ maas_installation_type=deb" ./backup.yaml

