---
title: "Vagrant Box"
date: 2018-11-22T10:26:15Z
lastmod: 2021-05-03T15:26:15Z
draft: false
weight: 60
---

The VAW supports VirtualBox for providers of Vagrant. Operating system supported CentOS, Debian and Ubuntu Boxes. OS architecture supported x86_64. Details are as follows:

### CentOS

* CentOS 8 (Deprecated ended 2021-12-31)
* CentOS 7 (Main support)
* CentOS 6 (Deprecated ended 2020-11-30)

### Debian

* Debian 10.0 (Main support)
* Debian 9.0 (Main support)
* Debian 8.0 (Deprecated ended 2020-06-30)

### Ubuntu

* Ubuntu 18.04 (In preparation)
* Ubuntu 16.04 (Main support)
* Ubuntu 14.04 (Deprecated ended 2019-04-25)

To download Vagrant Box, you can search from [Discover Vagrant Boxes](https://app.vagrantup.com/boxes/search?provider=virtualbox).

**Note: The `vaw/centos*-default` and `vaw/centos*-full` Boxs has been deprecated. From now on, we recommend using the distribution box.**

By default, the Vagrantfile uses the `vaw/centos*-default` Box which has already provisioned default settings.

In addition, you can use the `vaw/centos*-full` Box which has already provisioned default settings and activate develop and deploy tools.

You can build the environment in a short period of time compared with provisioning from the pure vagrant Box.

### CentOS 7 (Deprecated)

* [vaw/centos7-default](https://atlas.hashicorp.com/vaw/boxes/centos7-default)
* [vaw/centos7-full](https://atlas.hashicorp.com/vaw/boxes/centos7-full)

### CentOS 6 (Deprecated)

* [vaw/centos6-default](https://atlas.hashicorp.com/vaw/boxes/centos6-default)
* [vaw/centos6-full](https://atlas.hashicorp.com/vaw/boxes/centos6-full)
