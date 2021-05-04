---
title: "Getting Started"
date: 2017-10-17T15:26:15Z
lastmod: 2021-05-03T15:26:15Z
draft: false
weight: 20
---

## Usage

### 1. Install Virtualbox

Download the VirtualBox form [www.virtualbox.org](https://www.virtualbox.org) and install.

### 2. Install Vagrant

Download the Vagrant form [www.vagrantup.com](https://www.vagrantup.com) and install.

### 3. Download Ansible playbooks of the VAW

Download a Vagrantfile and Ansible playbooks from the following link.

[Releases page](https://github.com/thingsym/vaw/releases)

### 4. Generate SSL certificate files using mkcert

Install mkcert. See [https://github.com/FiloSottile/mkcert](https://github.com/FiloSottile/mkcert)

	cd vaw-x.x.x
	mkcert -install
	mkdir mkcert
	cd mkcert
	mkcert -cert-file cert.pem -key-file privke.pem <vm_hostname>

### 5. Launch a virtual environment

	cd vaw-x.x.x
	vagrant up

If you don't have a Box at first, begins from the download of Box.
After provisioning, you can launch a WordPress development environment.

### 6. Access to the website and the WordPress Admin

Access to the website **http://vaw.local/**. Access to the WordPress admin **http://vaw.local/wp-admin/**.

### 7. Access to a Vagrant machine via SSH

	vagrant ssh

Or using ssh config.

	vagrant ssh-config > ssh_config.cache
	ssh -F ssh_config.cache default
