#!/bin/sh
ansible-playbook -i hosts -u indou --private-key="~/.ssh/id_rsa" site.yml --ask-become-pass
