---
title: "Vagrant Box"
date: 2018-11-22T10:26:15Z
draft: false
weight: 60
---

The VAW supports VirtualBox for providers of Vagrant.
Operating system and architecture supported centos-7.x x86_64 and centos-6.x x86_64 Vagrant Box. To download Vagrant Box, you can search from [Discover Vagrant Boxes](https://app.vagrantup.com/boxes/search?provider=virtualbox).

By default, the Vagrantfile uses the `vaw/centos*-default` Box which has already provisioned default settings.

In addition, you can use the `vaw/centos*-full` Box which has already provisioned default settings and activate develop and deploy tools.

You can build the environment in a short period of time compared with provisioning from the pure vagrant Box.

### CentOS 7

* [vaw/centos7-default](https://atlas.hashicorp.com/vaw/boxes/centos7-default)
* [vaw/centos7-full](https://atlas.hashicorp.com/vaw/boxes/centos7-full)

### CentOS 6

* [vaw/centos6-default](https://atlas.hashicorp.com/vaw/boxes/centos6-default)
* [vaw/centos6-full](https://atlas.hashicorp.com/vaw/boxes/centos6-full)
