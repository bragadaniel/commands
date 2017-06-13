# Helper Commands Docker

## First Install Docker on Machine

* [Docker](https://docs.docker.com/engine/installation/)
## Look and Create this files

[docker-compose.yml](commands/docker-compose.yml)

[Dockerfile](commands/Dockerfile)

### Create project
```sh
$ docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app rails rails new --skip-bundle APPNAME --database=postgresql
```
### Build project
- Run command
```
$ docker-compose build
```
### Manage docker

#### List Images
```sh
$ docker images -a
```
#### Removing Docker Images

```sh
$ docker rmi IMAGE IMAGE
```

#### Remove all images

```sh
$ docker rmi $(docker images -a -q)
```

#### Remove Dangling Images
- List dangling
```sh
$ docker images -f dangling=true
```
- Remove
```sh
$ docker rmi $(docker images -f dangling=true -q)
```

### Removing Containers
#### List Containers
```sh
$ docker ps -a
```
#### Remove one or more specific containers

```sh
$ docker rm ID_or_Name ID_or_Name
```
#### Stop and remove all containers
```sh
$ docker stop $(docker ps -a -q)
```

### Removing Volumes
#### List Volumes
```sh
$ docker volume ls
```
#### Remove one or more specific volumes

```sh
$ docker volume rm volume_name volume_name
```

#### Remove dangling volumes
- List
```sh
$ docker volume ls -f dangling=true
```
- Remove
```sh
$ docker volume rm $(docker volume ls -f dangling=true -q)
```
### How to contribute to the project

#### 1. Add the remote repository source at your local repositoy
```sh
$ git remote add upstream https://github.com/bragadaniel/commands.git
```
#### Or SSH
```sh
$ git remote add upstream git@github.com:bragadaniel/commands.git
```
#### 2. Sync your repository with the original repository
```sh
$ git fetch upstream
```

#### 3. Update your local repository
```sh
$ git checkout master
$ git merge upstream/master
```

#### 4. Work on it and send your changes
```sh
$ git push origin master
```

#### 5. Do a pull request at your fork on GitHub
