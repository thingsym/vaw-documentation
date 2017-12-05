---
title: "Configuration file"
date: 2017-10-17T15:26:15Z
draft: false
weight: 30
---

## Default configuration Variables

ID and password for the initial setting is as follows. Can be set in the provisioning configuration file.

#### Database

* ROOT USER `root`
* ROOT PASSWORD `admin`
* HOST `localhost`
* DATABASE NAME `wordpress`
* USER `admin`
* PASSWORD `admin`

#### WordPress Admin

* USER `admin`
* PASSWORD `admin`

## Customize Options

You can build a variety of environment that edit configuration files of the VAW.

There are two configuration files you can customize.

* Vagrantfile
* group_vars/all.yml

Run `vagrant up` or `vagrant provision`, after editing the configuration files.
