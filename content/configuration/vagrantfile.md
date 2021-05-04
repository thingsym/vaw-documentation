---
title: "Vagrantfile"
date: 2018-11-22T10:26:15Z
lastmod: 2021-05-03T15:26:15Z
draft: false
weight: 10
---

### Vagrant configuration file (Ruby)

Vagrant configuration file is **Vagrantfile**.

Vagrantfile will set the vagrant Box, private IP address, hostname and the document root.

If you launch multiple environments, change the name of the directory. Should rewrite `vm_ip` and `vm_hostname`. Note not to overlap with other environments.

You can accesse from a terminal in the same LAN to use the public network to Vagrant virtual environment. To use public networks, set IP address for bridged connection to `public_ip`. In that case, recommended that configure the same IP address to `vm_hostname`.

	## Vagrant Settings ##
	vm_box                = 'centos/7'
	vm_box_version        = '>= 0'
	vm_ip                 = '192.168.46.49'
	vm_hostname           = 'vaw.local'
	vm_document_root      = '/var/www/html'

	public_ip             = ''

	forwarded_port        = [
		3000,
		3001,
		1025,
		8025
	]

	vbguest_auto_update   = true
	synced_folder_type    = 'virtualbox' # virtualbox|nfs|rsync|smb

	ansible_install_mode  = :default    # :default|:pip
	ansible_version       = 'latest'    # only :pip required

	provision_mode        = 'all'       # all|wordpress|box

	vagrant_plugins       = [
		'vagrant-hostsupdater',
		'vagrant-vbguest',
		'vagrant-serverspec'
	]

* `vm_box` (required) name of Vagrant Box (default: `centos/7`)
* `vm_box_version` (required) version of Vagrant Box (default: `>= 0`)
* `vm_ip` (required) private IP address (default: `192.168.46.49`)
* `vm_hostname` (required) hostname (default: `vaw.local`)
* `vm_document_root` (required) document root path (default: `/var/www/html`)
	* auto create `wordpress` directory and synchronized
* `public_ip` IP address of bridged connection (default: `''`)
* `forwarded_port` list of ports that you want to transfer (default: `[ 3000, 3001, 1025, 8025 ]`)
	* 3000: Browsersync auto-detected port
	* 3001: Browsersync ui port
	* 1025: MailHog SMTP default port
	* 8025: MailHog HTTP default port
* `vbguest_auto_update` whether to update VirtualBox Guest Additions (default: `true` / value: `true` | `false`)
トします (default: `true` / value: `true` | `false`)
* `synced_folder_type` the type of synced folder (default: `virtualbox` / value: `virtualbox` | `nfs` | `rsync` | `smb`)
* `ansible_install_mode` (required) the way to install Ansible (default: `:default` / value: `:default` | `:pip`)
* `ansible_version` version of Ansible to install (default: `latest`)
* `provision_mode` (required) Provisioning mode (default: `all` / value: `all` | `wordpress` | `box`)
* `vagrant_plugins` install vagrant plugins
