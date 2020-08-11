GNUU Dockerfiles
================

Something special Docker images for GNUU e.V.


list:

File                  | Description
--------------------- | -------------------------------------------------
Dockerfile.gnuuaio    | All in One UUCP Client
Dockerfile.inn        | INN Server (News)
Dockerfile.innuucp    | INN Server (News) with UUCP backend
Dockerfile.postfix    | Postfix Server (Mail)
Dockerfile.szip-build | Helper Container to build szip from source (will be package in Kubernetes Job
Dockerfile.uucp-build | Helper Container to patch uucp package with crypt password support
Dockerfile.busybox    | Helper Container for admin access (shell, curl, you name it)
Dockerfile.nginx      | Nginx Server (Web)
Dockerfile.python     | Python Container for Flask and Kubernetes Jobs
Dockerfile.uucp       | UUCP Server (with patched uucp package


images are build in [GithubAcions](https://github.com/gnuu-de/dockerfiles/actions)

ref: https://github.com/marketplace/actions/build-and-push-docker-images
