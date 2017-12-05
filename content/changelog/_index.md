---
title: "Changelog"
date: 2017-10-17T15:26:15Z
draft: false
weight: 110
---

* version 0.5.4 - 2017.11.19
	* fix comment
	* add WordPress plugin
	* update theme-unit-test
	* fix AllowOverride in httpd.conf for security plugins
	* add default-character-set utf8mb4 with client section
* version 0.5.3 - 2017.10.03
	* fix comment
	* change database charset from utf8 to utf8mb4
	* add MailHog
* version 0.5.2 - 2017.08.17
	* bump up PHP version number to 7.1.7
	* fix phpenv.sh
	* change setting name from ssl_admin to ssl_wp_admin
	* enable sync-dir with before-command and after-command
	* fixed version with PHPUnit, PHP_CodeSniffer and PHPUnit Selenium
	* change label of provision_mode from normal to all
	* change order of setting items
	* fix settings format
	* add .travis.yml
	* fix vb.customize for improve VirutalBox performance
	* remove vagrant-cachier plugin
* version 0.5.1 - 2017.07.12
	* fix php-cgi not found
	* fix webserver and fastcgi owner/group
	* remove bower
	* add tests for box
	* fix centos-box.sh
	* change provision_only_wordpress mode to provision_mode
	* rename certificate file and key
	* fix libcurl installation
* version 0.5.0 - 2017.06.20
	* fix centos-box.sh
	* fix vm_box, using public Vagrant boxes
	* add CityFan repository for libcurl, only CentOS 6
	* set permission to synced_folder wordpress
	* change default database to mariadb from mysql
	* fix server test
	* fix php install via phpenv.sh
	* add socket argument to phpenv.sh
	* add fastcgi to apache
	* improve phpenv.sh version 0.1.1 for CentOS
	* add forwarded_port for Browsersync
	* fix php post_max_size to 32M
	* remove wp-phpcs ruleset
	* add custom hhvm.server.ini
	* bump up Ruby version number to 2.4.1
	* add webserver h2o
	* change hhvm fastcgi connect to UNIX domain socket from TCP
	* change webserver and fastcgi owner/group nobody
	* add my.cnf for each database
	* fix opcache disable
	* add tests for sync-dir
	* update activate plugins
	* add wordpress import for backwpup
	* add wp-content automatic place
	* fix sendfile off
* version 0.4.4 - 2017.03.18
	* using YAML dictionaries in tasks
	* add centos-box.sh
* version 0.4.3 - 2017.03.07
	* add custom ~/.ssh/config
	* add only WordPress provision mode
	* add ansible install_mode
	* fix hhvm
	* change filename extension from cert to crt
	* add packagist.jp repository
	* fix wp core config parameter
	* add yarn
	* add cachetool
	* fix mysql and mariadb tasks
	* add yum-utils
	* fix database tests
	* update percona-release-0.1-4.noarch.rpm
	* fix my.cnf.j2
	* fix httpd.conf when ssl enable
	* add tests of wordpress
	* replace from shell module to command module
	* provision fail only when SELinux is Enforcing
	* fix dest path of default_configure_options
	* fix php.conf.j2
	* bump up node 6.9.1
	* fix default-node-packages.j2
* version 0.4.2 - 2016.10.04
	* add develop-tools role, fix build environment
	* fix the inline script to get the major version number
	* fix sudo user
	* fix shebang
* version 0.4.1 - 2016.09.10
	* fix inline shell in Vagrantfile
	* fix nodejs version
* version 0.4.0 - 2016.08.22
	* bump up php 7.0.7
	* change to package module from yum module
	* change default box to CentOS 7 from CentOS 6
	* add synced_folder /vagrant
	* add vagrant-vbguest
	* change to yum_repository module from template module
	* fix home_dir path into playbooks
	* add phpenv-composer, remove composer role
	* fix phpenv role
	* add nodenv role, remove nodejs, npm
	* change provision to ansible_local from inline shell
	* remove RepoForge repository
	* add webgrind
	* add phpmd
	* add prestissimo
	* fix re2c via yum
	* fix tests
	* add gulp-cli and npm-check-updates, remove gulp globally
	* change to become, since sudo has been deprecated
	* fix phpenv.sh
* version 0.3.3 - 2016.05.31
	* fix playbooks
	* remove compass gem
	* refactoring phpenv.sh
	* disable OPcache
* version 0.3.2 - 2016.02.09
	* add custom config
	* remove server tuning
* version 0.3.1 - 2016.01.18
	* fix yum releasever version
* version 0.3.0 - 2015.12.21
	* fix Vagrantfile
	* fix wp-cli role, compatible with WordPress 4.4
	* improve hhvm role
	* improve command phpenv.sh
	* support CentOS 7 x86-64
* version 0.2.1 - 2015.10.09
	* add stylestats
	* add plato
* version 0.2.0 - 2015.08.31
	* fix Fabric
	* fix WordPress plugins
	* fix rbenv and hhvm, MariaDB roles
	* fix memory 1.5GB
	* remove php55 and php-fpm roles
	* add command phpenv.sh
	* add phpenv role, replaced from php
* version 0.1.8 - 2015.08.04
	* fix WordPress plugins
	* add PHPUnit Selenium
* version 0.1.7 - 2015.07.06
	* add public_network
* version 0.1.6 - 2015.06.15
	* add vm_box_version
* version 0.1.5 - 2015.06.04
	* add Fabric
	* add wrk
	* add command db_backup.sh
	* nginx tuning
* version 0.1.4 - 2015.04.29
	* fix Ansible 1.9.x
* version 0.1.3 - 2015.02.17
	* fix fastcgi_spec.rb
* version 0.1.2 - 2015.01.31
	* change how to set the environment variables to .bash_profile
	* fix Vagrantfile
* version 0.1.1 - 2015.01.14
	* change setting format
	* fix yum repository metadata
	* add WordPress options
	* add sass and compass gems
	* fix wp-cli role
* version 0.1.0 - 2014.12.22
	* initial release
