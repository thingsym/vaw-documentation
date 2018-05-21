---
title: "Directory Layout"
date: 2018-05-20T15:26:15Z
draft: false
weight: 40
---

Directory structure of the VAW is as follows.

This directory synchronize to the guest OS side `/vagrant`. `wordpress` creates automatically and synchronize to `vm_document_root`.

`wp-content` is a directory that stores WordPress themes, plugins, and upload files. `wp-content` will be placed automatically in WordPress which was built at the time of provisioning, if you place `wp-content` in this directory from the production environment.

`uploads` is a directory where stored upload files in `wp-content` directory of WordPress. `uploads` will be placed automatically in WordPress which was built at the time of provisioning, if you place `uploads` in this directory from the production environment.

You can create the same environment as the production environment, when you build a wordpress by import database dump data, substitution of url, regeneration of thumbnail image. You can set all from the provisioning configuration file.

## Full Layout

* backup (stores backup file. create automatically at running script, if it does not exist.)
* command (stores shell script)
* config (stores Custom Config)
* config.sample (sample Custom Config)
* group_vars (stores the provisioning configuration file of Ansible)
	* all.yml (provisioning configuration file)
* hosts
	* local (inventory file)
* import (stores import data, if necessary)
* LICENSE (license file)
* plugins (stores WordPress plugin zip format files, if necessary)
* Rakefile (Rakefile of ServerSpec)
* README-ja.md
* README.md
* roles (stores Ansible playbook of each role)
* site.yml (Ansible playbook core file)
* spec (stores ServerSpec spec file)
	* box
	* localhost
	* spec_helper.rb
	* sync-dir
* themes (stores WordPress theme zip format files, if necessary)
* uploads (uploads directory in the wp-content)
* Vagrantfile (Vagrant configuration file)
* wordpress (synchronize to the Document Root. create automatically at `vagrant up`, if it does not exist.)
* wp-content (WordPress's wp-content directory)

## Minimum Layout

The VAW will be built in the directory structure of the following minimum unit.

* group_vars (stores the provisioning configuration file of Ansible)
	* all.yml (provisioning configuration file)
* hosts
	* local (inventory file)
* roles (stores Ansible playbook of each role)
* site.yml (Ansible playbook core file)
* Vagrantfile (Vagrant configuration file)
* wordpress (synchronize to the Document Root. create automatically at `vagrant up`, if it does not exist.)
