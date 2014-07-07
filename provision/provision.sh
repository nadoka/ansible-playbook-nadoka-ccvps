#!/bin/sh
set -e
if ! type ansible >/dev/null 2>&1; then
    sudo apt-get install -y ansible
fi
# avoid "ERROR: provided hosts list is empty"
if ! grep -q localhost /etc/ansible/hosts; then
    sudo cat >/etc/ansible/hosts <<EOF

[local]
localhost
EOF
fi
if [ -d /vagrant ]; then
    [ -d /etc/ansible/roles ] || ansible-galaxy install -r /vagrant/provision/roles/Rolefile
    ansible-playbook /vagrant/provision/site.yml --connection=local
else
    [ -d provision/roles/znzj.ja_jp ] || ansible-galaxy install -f -p provision/roles -r provision/roles/Rolefile
    sudo ansible-playbook provision/site.yml --connection=local
fi
