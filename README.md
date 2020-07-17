GNUU Dockerfiles
================

list:

File                  | Description
--------------------- | -------------------------------------------------
Dockerfile.inn        | INN Server (News)
Dockerfile.postfix    | Postfix Server (Mail)
Dockerfile.szip-build | Helper Container to build szip from source (will be package in Kubernetes Job
Dockerfile.uucp-build | Helper Container to patch uucp package with crypt password support
Dockerfile.busybox    | Helper Container for admin access (shell, curl, you name it)
Dockerfile.nginx      | Nginx Server (Web)
Dockerfile.python     | Python Container for Flask and Kubernetes Jobs
Dockerfile.uucp       | UUCP Server (with patched uucp package


