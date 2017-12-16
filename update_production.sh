#!/bin/bash

# TODO: указать пользователя, от чьего имени подключаться
readonly REMOTE_USER=alice

ansible-playbook -u $REMOTE_USER --ask-pass \
    -i inventories/production/hosts \
    playbooks/update.yml
