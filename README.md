# ansible-playbook-nadoka-ccvps

Playbook for nadoka-ccvps.n-z.jp

## Usage

### Ansible in Guest OS

```
    % git clone https://github.com/nadoka/ansible-playbook-nadoka-ccvps
    % cd ansible-playbook-nadoka-ccvps
    % vagrant up
```

### Ansible from Host OS

```
    % git clone https://github.com/nadoka/ansible-playbook-nadoka-ccvps
    % cd ansible-playbook-nadoka-ccvps
    % ansible-galaxy install -f -p provision/roles -r provision/roles/Rolefile
    % ANSIBLE_REMOTE=1 vagrant up
```
