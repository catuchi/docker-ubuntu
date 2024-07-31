# docker-ubuntu
A journey through Docker Containers using Linux Ubuntu


## Docker Installation & Configuration

All installation steps are taken from here:
https://docs.docker.com/engine/install/ubuntu/

Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

Install the Docker packages.

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Verify that the Docker Engine installation is successful by running the hello-world image.

```bash
sudo docker run hello-world
```

By default, running the docker command requires administrator privileges. To run Docker commands as a non-root user without sudo, add your user to the docker group:

```bash
sudo usermod -aG docker [username]
```
E.g sudo usermod -aG docker sam

To apply these new group memberships, log out and then log back in, or type:

```bash
su - [username]
```
E.g su - sam
