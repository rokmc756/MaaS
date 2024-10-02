#!/bin/bash
#
# [ Create a new admin user ]
# For an already existing MAAS installation, a new admin user can be created.
# The below example assumes the host for which the account is to be created is set under [maas_region_controller] in ./hosts.
# user_ssh allows for upload of a Launchpad (lp:id) or GitHub (gh:id) public key, or can be left blank (user_ssh=).

ansible-playbook -i ./hosts --extra-vars="user_name=newuser user_pwd=newpwd user_email=user@email.com user_ssh=lp:id" ./createadmin.yaml

