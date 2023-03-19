GNUU Dockerfiles
================

Something special Docker images for GNUU e.V.

Images are hosted [on ghcr.io](https://github.com/orgs/gnuu-de/packages)


list:

File                  | Description
--------------------- | -------------------------------------------------
Dockerfile.gnuuaio    | All in One UUCP Client
Dockerfile.innuucp    | INN Server (News) with UUCP backend
Dockerfile.postfix    | Postfix Server (Mail)
Dockerfile.szip-build | Helper Container to build szip from source (will be package in Kubernetes Job
Dockerfile.uucp-build | Helper Container to patch uucp package with crypt password support
Dockerfile.busybox    | Helper Container for admin access (shell, curl, you name it)
Dockerfile.nginx      | Nginx Server (Web)
Dockerfile.python     | Python Container for Flask and Kubernetes Jobs


images are build in [GithubAcions](https://github.com/gnuu-de/dockerfiles/actions)

ref: https://github.com/marketplace/actions/build-and-push-docker-images

Elements image is mirrored:

```bash
docker pull docker.io/vectorim/element-web:v1.11.25
docker tag docker.io/vectorim/element-web:v1.11.25 ghcr.io/gnuu-de/element-web:v1.11.25
docker push ghcr.io/gnuu-de/element-web:v1.11.25
```
