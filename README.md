GNUU Dockerfiles
================

Container images for GNUU e.V. The `v2` branch builds Ubuntu 24.04-based
mail/news images with the [UUCP Go port](https://github.com/gnuu-de/uucp/releases)
and [bsmtp Go port](https://github.com/gnuu-de/bsmtp/releases) Debian packages.
Each downloaded package is verified against the SHA-256 checksum recorded in
its Dockerfile before installation. Update the version and checksum together
for a new package release.

Images are hosted [on ghcr.io](https://github.com/orgs/gnuu-de/packages)


list:

File                  | Description
--------------------- | -------------------------------------------------
Dockerfile.gnuuaio    | All in One UUCP Client
Dockerfile.innuucp    | INN Server (News) with UUCP backend
Dockerfile.postfix    | Postfix Server (Mail)
Dockerfile.szip-build | Helper Container to build szip from source (will be package in Kubernetes Job
Dockerfile.uucp-build | Legacy helper for building a patched native UUCP package
Dockerfile.busybox    | Helper Container for admin access (shell, curl, you name it)
Dockerfile.nginx      | Nginx Server (Web)
Dockerfile.python     | Python Container for Flask and Kubernetes Jobs


Images are built in [GitHub Actions](https://github.com/gnuu-de/dockerfiles/actions)
on pushes to `v2`, pull requests against `v2`, and version tags. Published
images use the `v2` tag on this branch and are signed by digest with Cosign
keyless GitHub OIDC identities. Pull requests build without publishing.

The interactive `linux` account in `gnuuaio` uses UID/GID 2000; Ubuntu's INN
package occupies UID/GID 1000. Match the home-directory volume ownership to
UID/GID 2000 when deploying that image.

ref: https://github.com/marketplace/actions/build-and-push-docker-images

Elements image is mirrored:

```bash
docker pull docker.io/vectorim/element-web:v1.11.25
docker tag docker.io/vectorim/element-web:v1.11.25 ghcr.io/gnuu-de/element-web:v1.11.25
docker push ghcr.io/gnuu-de/element-web:v1.11.25
```
