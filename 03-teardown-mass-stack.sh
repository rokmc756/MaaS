#!/bin/bash
#
# [ Teardown the MAAS stack ]

ansible-playbook -i ./hosts ./teardown.yaml

