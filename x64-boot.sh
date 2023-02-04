qemu-system-x86_64 \
-m 512M \
-bios /usr/share/OVMF/OVMF_CODE.fd \
-smp 4 \
-netdev user,id=n1,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 \
-nographic \
-machine q35 \
-accel accel=tcg,tb-size=64 \
ubuntu-x64.img
