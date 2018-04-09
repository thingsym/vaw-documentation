---
title: "all.yml"
date: 2018-04-09T15:26:15Z
draft: false
weight: 20
---

### Provisioning configuration file (YAML)

Provisioning configuration file is **group_vars/all.yml**.

In YAML format, you can set server, database and WordPress environment. And can enable the develop and deploy tools.

	## Server & Database Settings ##

	server             : apache   # apache|nginx|h2o
	fastcgi            : none     # none|php-fpm|hhvm

	database           : mariadb  # mariadb|mysql|percona
	db_root_password   : admin

	db_host            : localhost
	db_name            : wordpress
	db_user            : admin
	db_password        : admin
	db_prefix          : wp_
	db_charset         : ''
	db_collate         : '' # utf8mb4_general_ci

	## WordPress Settings ##

	title              : VAW (Vagrant Ansible WordPress)
	admin_user         : admin
	admin_password     : admin
	admin_email        : hoge@example.com

	# e.g. latest, nightly, 4.1, 4.1-beta1
	# see Release Archive - https://wordpress.org/download/release-archive/
	# 3.5.2 or later to work properly
	version            : latest

	# e.g. en_US, ja, ...
	# see wordpress-i18n list - http://svn.automattic.com/wordpress-i18n/
	lang               : en_US

	# in own directory or subdirectory install.
	# see http://codex.wordpress.org/Giving_WordPress_Its_Own_Directory
	wp_dir             : ''   #e.g. /wordpress
	wp_site_path       : ''   #e.g. /wordpress

	multisite          : false   # true|false

	# default theme|slug|url|zip (local path, /vagrant/themes/~.zip)
	activate_theme     : ''
	themes             : []

	# slug|url|zip (local path, /vagrant/plugins/~.zip)
	activate_plugins   :
	                        - theme-check
	                        - log-deprecated-notices
	                        - debug-bar
	                        - query-monitor
	                        - broken-link-checker
	plugins            :
	                        - developer
	                        - monster-widget
	                        - wordpress-beta-tester
	                        - wp-multibyte-patch

	theme_mod          : {}

	# see Option Reference - http://codex.wordpress.org/Option_Reference
	options            : {}

	# e.g. /%year%/%monthnum%/%postname%
	# see http://codex.wordpress.org/Using_Permalinks
	permalink_structure  :
	                      structure   : ''
	                      category    : ''
	                      tag         : ''

	# Any one of 4 ways to import
	import_xml_data    : ''   # local path, /vagrant/import/~.xml
	import_db_data     : ''   # local path, /vagrant/import/~.sql
	import_backwpup    :
	                      path          : ''   # local path, /vagrant/import/~.zip
	                      db_data_file  : ''
	                      xml_data_file : ''
	import_admin       : false   # true|false
	theme_unit_test    : false   # true|false

	replace_old_url         : ''   # http(s)://example.com, to vm_hostname from old url
	regenerate_thumbnails   : false   # true|false

	WP_DEBUG           : true   # true|false
	SAVEQUERIES        : true   # true|false

	## Develop & Deploy Settings ##

	ssl                : false   # true|false

	# See Supported Versions http://php.net/supported-versions.php
	php_version        : 7.2.1
	http_protocol      : http   # http|https

	develop_tools      : false   # true|false
	deploy_tools       : false   # true|false

	## That's all, stop setting. Let's vagrant up!! ##

	WP_URL             : '{{ http_protocol }}://{{ HOSTNAME }}{{ wp_site_path }}'
	WP_PATH            : '{{ DOCUMENT_ROOT }}{{ wp_dir }}'


#### Server & Database Settings ##

* `server` (required) name of web server (default: `apache` / value: `apache` | `nginx` | `h2o`)
* `fastcgi` name of fastCGI (default: `none` / value: `none` | `php-fpm` | `hhvm`)
* `database` (required) name of databese (default: `mariadb` / value: `mariadb` | `mysql` | `percona`)
* `db_root_password` (required) database root password (default: `admin`)
* `db_host` (required) database host (default: `localhost`)
* `db_name` (required) name of database (default: `wordpress`)
* `db_user` (required) database user name (default: `admin`)
* `db_password` (required) database user password (default: `admin`)
* `db_prefix` database prefix (default: `wp_`)
* `db_charset` database character set (default: `''`)
* `db_collate` database collation (default: `''`)

#### WordPress Settings ##

* `title` WordPress site title (default: `VAW (Vagrant Ansible WordPress)`)
* `admin_user` (required) WordPress admin user name (default: `admin`)
* `admin_password` (required) WordPress admin user password (default: `admin`)
* `admin_email` (required) WordPress admin email address (default: `hoge@example.com`)
* `version` (required) version of WordPress (default: `latest`)
	* e.g. `latest`, `4.1`, `4.1-beta1`
	* see [Release Archive](https://wordpress.org/download/release-archive/)
	* version 3.5.2 or later to work properly
* `lang` (required) WordPress in your language (default: `en_US`)
	* e.g. `en_US`, `ja`, ...
	* see [wordpress-i18n list](http://svn.automattic.com/wordpress-i18n/)

* `wp_dir` directory path to subdirectory install WordPress (default: install to document root)
* `wp_site_path` path of site (default: document root)
	* If `wp_dir` and `wp_site_path` are the same path, in own directory install.
	* If `wp_dir` and `wp_site_path` are different path, install to subdirectory. Note that `wp_site_path` be placed on one above the directory than `wp_dir`.
	* see [Giving WordPress Its Own Directory](http://codex.wordpress.org/Giving_WordPress_Its_Own_Directory)

* `multisite` Multisite enabled flag (default: `false` / value: `true` | `false`)
* `activate_theme` install a theme and activated (default: default theme)
	* set default theme `''`, `theme slug`, `zip file URL` or  `local zip file path`
	* set `/vagrant/themes/~.zip` by local zip file path
* `themes` install themes
	* set in YAML arrays of hashes format `theme slug`, `zip file URL` or `local zip file path`
	* set `/vagrant/themes/~.zip` by local zip file path
	* comment out with a `#` at the beginning of a line, if you want to disable the setting.

Configuration example

	themes             :
	                     - yoko
	                     - Responsive

Disable the setting case

	themes             : []

* `activate_plugins` install plagins and activated
	* set in YAML arrays of hashes format `plagin slug`, `zip file URL` or `local zip file path`
	* set `/vagrant/plagins/~.zip` by local zip file path
	* comment out with a `#` at the beginning of a line, if you want to disable the setting.

Configuration example

	activate_plugins   :
	                        - theme-check
	                        - plugin-check

Disable the setting case

	activate_plugins   : []

* `plugins` install plagins
	* set in YAML arrays of hashes format `plagin slug`, `zip file URL` or `local zip file path`
	* set `/vagrant/plagins/~.zip` by local zip file path
	* comment out with a `#` at the beginning of a line, if you want to disable the setting.

* `theme_mod` setting theme_mod (theme modification value)
	* see [set_theme_mod()](http://codex.wordpress.org/Function_Reference/set_theme_mod)
	* set in YAML nested hash format
	* comment out with a `#` at the beginning of a line, if you want to disable the setting.

Configuration example

	theme_mod          :
	                       background_color: 'cccccc'

Disable the setting case

	theme_mod          : {}

* `options` setting options
	* see [update_option()](http://codex.wordpress.org/Function_Reference/update_option) and [Option Reference](http://codex.wordpress.org/Option_Reference)
	* set in YAML nested hash format
	* comment out with a `#` at the beginning of a line, if you want to disable the setting.

Configuration example

	options            :
	                       blogname: 'blog title'
	                       blogdescription: 'blog description'

Disable the setting case

	options            : {}

* `permalink_structure` setting permalink structure
	* set the following three permalink structures
	* see [Using Permalinks](http://codex.wordpress.org/Using_Permalinks)
	* `structure` set the permalink structure using the structure tags
	* `category` set the prefix of the category archive
	* `tag` set the prefix of the tag archive
* `import_xml_data` local WordPress export (WXR) file path `/vagrant/import/~.xml`
* `import_db_data` local sql dump file path `/vagrant/import/~.sql`
* `import_backwpup`
	* `path` Archive file path `/vagrant/import/~.zip` (Zip, Tar, Tar GZip, Tar BZip2)
	* `db_data_file` DB backup file name (Import from one of data files)
	* `xml_data_file` XML export file name (imported from one of the data files)
* `import_admin` Add WordPress administrator user (default: `false` / value: `true` | `false`)
* `theme_unit_test` import Theme Unit Test data enabled flag (default: `false` / value: `true` | `false`)
* `replace_old_url` replace to `vm_hostname` from `old url`
* `regenerate_thumbnails` regenerate thumbnails enabled flag (default: `false` / value: `true` | `false`)
* `WP_DEBUG` debug mode (default: `true` / value: `true` | `false`)
* `SAVEQUERIES` save the database queries (default: `true` / value: `true` | `false`)

#### Develop & Deploy Settings ##

* `ssl` WordPress administration over SSL enabled flag (default: `false` / value: `true` | `false`)
* `php_version` version of PHP (default: `7.2.1`)
* `http_protocol` HTTP protocol (default: `http` / value: `http` | `https`)
* `develop_tools` activate develop tools (default: `false` / value: `true` | `false`)
* `deploy_tools` activate deploy tools (default: `false` / value: `true` | `false`)
