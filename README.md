# ansible-playbook-nadoka-ccvps

Playbook for nadoka-ccvps.n-z.jp

## Usage

### Ansible in Guest OS

    % git clone https://github.com/nadoka/ansible-playbook-nadoka-ccvps
    % cd ansible-playbook-nadoka-ccvps
    % vagrant up

### Ansible in Production

    $ git clone https://github.com/nadoka/ansible-playbook-nadoka-ccvps
    $ cd ansible-playbook-nadoka-ccvps
    $ ./provision/provision.sh

### Ansible from remote

Setup `~/.ssh/config`, e.g.:

    Host nadoka-ccvps nadoka-ccvps.n-z.jp
        Hostname nadoka-ccvps.n-z.jp
        User znz
        HostKeyAlias nadoka-ccvps
        UserKnownHostsFile ~/.ssh/nadoka.known_hosts

And run:

    $ ansible-galaxy install -f -p provision/roles -r provision/roles/Rolefile
    $ ansible-playbook -i provision/hosts provision/site.yml
