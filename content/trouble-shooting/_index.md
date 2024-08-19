---
title: "Trouble shooting"
date: 2024-08-18T10:26:15Z
lastmod: 2024-08-18T15:26:15Z
draft: false
weight: 100
---

### Vagrant can't mount to /mnt when vagrant up.

The following `umount /mnt` error message is displayed.

```
The following SSH command responded with a non-zero exit status.
Vagrant assumes that this means the command failed!

umount /mnt

Stdout from the command:


Stderr from the command:

umount: /mnt: not mounted
```

It may happens if the kernel version of OS used in vagrant box does not match the requirements.

The solution is to update the kernel and provision again. It may also be resolved by updating the vagrant box.

1. Access to a guest via SSH.

```
vagrant ssh
```

2. Update the kernel into guest.

#### Debian or Ubuntu

```
sudo apt-get -y install linux-image-amd64 linux-headers-amd64
```

#### CentOS

```
sudo yum -y update kernel kernel-devel kernel-headers kernel-tools kernel-tools-libs

exit
```

3. Provision again on the host.

```
vagrant reload
```
