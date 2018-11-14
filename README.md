# Ansible Test Project
Two servers that will give you access to run ansible commands on a remote server.



## Set up
- Set up the `hosts` file in `/config`
- `docker-compose up`
- `docker-compose exec -it control_server bash`
    - `ssh-keygen` create an ssh key
    - `ssh-copy-id {your computers ip}` copy the id to the test server (default password is 'root')
    