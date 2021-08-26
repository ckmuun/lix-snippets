# Steps to create an arm64 docker/oci image using buildah (buildah.io), then pushing it using podman
# This assumes running on an amd64 x86 machine, tested on Fedora 34 workstation where buildah and podman are preinstalled

which buildah
which podman

# step 0 install qemu
sudo dnf install qemu-user-static

# step 1  reboot machine to make buildah find qemu -> This is very automagic!
reboot

# step 2 move to directory with Dockerfile
cd /path/to/Dockerfile
cat Dockerfile

# step 3 build untagged image, refer to buildah docs on how exactly to tag an image
buildah bud --arch arm64 --no-cache

# step 4 check if image was created
buildah images 

# step 5 push image to quay.io (assuming you have an account there)
podman login quay.io
podman push <image-id> quay.io/<your-username>/<your-repo>:<your-tag>
