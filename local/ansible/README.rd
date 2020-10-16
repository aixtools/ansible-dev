# Ansible project base directory - example
This directory is to serve as a mock-up of the base directory of an ansible project

## ansible.cfg
This file will have changes needed for AIX - but will not include an inventory entry.

## Inventory Files
I'll include several inventory files here. inventory.location, e.g.,
inventory.nodejs
inventory.ojdk
inventory.local
inventory.hsum

When running a playbook the argument -i inventory.{{ location }} will be needed.

## While working through Geerlings book:
per ch5:

add ./group_vars and ./host_vars
