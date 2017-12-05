---
title: "Getting Started"
date: 2017-10-17T15:26:15Z
draft: false
weight: 20
---

## Usage

### 1. Install Virtualbox

Download the VirtualBox form [www.virtualbox.org](https://www.virtualbox.org) and install.


### 2. Install Vagrant

Download the Vagrant form [www.vagrantup.com](https://www.vagrantup.com) and install.

### 3. Install Vagrant plugin

Install the Vagrant plugin on the terminal as necessary.

	vagrant plugin install vagrant-hostsupdater
	vagrant plugin install vagrant-vbguest
	vagrant plugin install vagrant-serverspec


### 4. Download Ansible playbooks of the VAW

Download a Vagrantfile and Ansible playbooks from the following link.

[Download Zip format file](https://github.com/thingsym/vaw/archive/master.zip)

### 5. Launch a virtual environment

	cd vaw-x.x.x
	vagrant up

If you don't have a Box at first, begins from the download of Box.
After provisioning, you can launch a WordPress development environment.

### 6. Access to the website and the WordPress Admin

Access to the website **http://vaw.local/**. Access to the WordPress admin **http://vaw.local/wp-admin/**.
