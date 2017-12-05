---
title: "How to make Vagrant Box"
date: 2017-10-17T15:26:15Z
draft: false
weight: 50
---

How to use the provisioning mode?

Let's see how to make Vagrant Box through the process from provisioning with Vagrant Box to building WordPress development environment.

## 1. Setting of configuration file

We will launch the Vagrant environment for creating Vagrant Box.
First of all, Set up the Vagrant configuration file and the provisioning configuration file.

Set `provision_mode` in the Vagrant configuration file to `box`.

	provision_mode        = 'box'    # all|wordpress|box

You can set the provisioning configuration file as you like.

However, if `provision_mode` is `box`, the WordPress Settings section of the provisioning configuration file will be skipped during provisioning.

## 2. Provisioning

Provision and build the environment.

	vagrant up

## 3. Creating a Vagrant Box (Packaging)

After provisioning is completed, create a Vagrant Box with a box name. (e.g. sample.box)

	vagrant package --output sample.box

## 4. Registration of Vagrant Box

Add the created Vagrant Box to Vagrant. (Register as eg sample)

	vagrant box add sample.box --name sample

You can delete the Vagrant Box file created for creating Vagrant Box. (e.g. sample.box)
You can destroy the launched Vagrant environment after checking the operation.

	vagrant destroy

## 5. Provisioning with the created Vagrant Box

Launch the Vagrant environment for WordPress development with the Vagrant Box you created.
Set up the Vagrant configuration file and the provisioning configuration file.

Set `vm_box` of the Vagrant configuration file to `sample`. (e.g. sample)
Set `provision_mode` in the Vagrant configuration file to `wordpress`.

	vm_box                = 'sample'
	...
	provision_mode        = 'wordpress'    # all|wordpress|box

You can set the provisioning configuration file as you like.

However, if `provision_mode` is `wordpress`, only the WordPress Settings section of the provisioning configuration file is enabled during provisioning.

## 6. Launch a virtual environment

	vagrant up

After provisioning, you can launch a WordPress development environment.
