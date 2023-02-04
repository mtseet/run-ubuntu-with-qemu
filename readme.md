# run ubuntu with qemu

Run ubuntu with qemu using ubuntu minimal cloud image

## Description

Describes the commands and steps to run an ubuntu virtual machine using qemu

## Dependencies

qemu emulator

ovmf firmware

ubuntu cloud image

## Usage

Create a place for the vm on your home directory

```
mkdir ~/ubuntu-vm
cd ~/ubuntu-vm
```

Install dpendencies

```
sudo apt install qemu-system-x86 qemu-utils ovmf libguestfs-tools
```

Download ubuntu cloud image

```
wget https://cloud-images.ubuntu.com/minimal/releases/jammy/release/ubuntu-22.04-minimal-cloudimg-amd64.img
```

Prepare virtual hard disk and change root password
```
cp ubuntu-22.04-minimal-cloudimg-amd64.img ubuntu-x64.img

virt-customize -a ubuntu-x64.img --root-password password:YOUR-PASSWORD
```

Boot the vm
```
./x64-boot.sh
```
