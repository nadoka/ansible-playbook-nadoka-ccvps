#!/bin/sh
set -e
apt-get install -y ansible
# avoid "ERROR: provided hosts list is empty"
grep -q localhost /etc/ansible/hosts || cat >/etc/ansible/hosts <<EOF

[local]
localhost
EOF
if [ -d /vagrant ]; then
    [ -d /etc/ansible/roles ] || ansible-galaxy install -r /vagrant/provision/roles/Rolefile
    ansible-playbook /vagrant/provision/site.yml --connection=local
else
    [ -d provision/roles/znzj.ja_jp ] || ansible-galaxy install -f -p provision/roles -r provision/roles/Rolefile
    ansible-playbook provision/site.yml --connection=local
fi
