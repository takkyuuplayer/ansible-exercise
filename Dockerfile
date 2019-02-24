FROM geerlingguy/docker-debian9-ansible

COPY . /tmp/provisioner

WORKDIR /tmp/provisioner

RUN ansible-playbook -i hosts.ini site.yml