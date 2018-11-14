# Ansible Test Project
This project gives you access to ywo servers that will let you 
run ansible commands on a remote server.

## Set up
- Set up the `hosts` file in `/config`
- Set your build paths in `docker-compose.yml`
- `docker-compose up`
- `docker-compose exec -it control_server bash`
    - `ssh-keygen` create an ssh key
    - `ssh-copy-id {your computers ip}` copy the id to the test server (default password is 'root')
- `cd /root/ansible/ansible-test-project`
- `ansible-playbook test.yml`