---
title: "Provisioning Mode"
date: 2017-10-17T15:26:15Z
draft: false
weight: 50
---

The VAW has three provisioning modes.

* `all` will normal provisioning from the pure Vagrant Box.
* `wordpress` provisions only sync folders including WordPress.
* `box` provision to create a Vagrant Box.

The VAW is characterized by being able to provision with various server and database configuration combinations. On the other hand, it takes time to build the environment from pure Vagrant Box.

You can create a Vagrant Box with server and database configuration in advance. By using the created Vagrant Box you can shorten the provisioning time.

First, create a Vagrant Box with Provision mode `box`.
Next, provision the created Vagrant Box with Provision mode `wordpress`.
Based on the Vagrant Box you created, WordPress development environment will start quickly anytime.
