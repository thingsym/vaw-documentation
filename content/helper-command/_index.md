---
title: "Helper command"
date: 2018-11-22T10:26:15Z
lastmod: 2024-08-18T15:26:15Z
draft: false
weight: 80
---

The **VAW** offers a useful scripts. Just run the script on a terminal. Database data backup, multiple versions installation of PHP, you can switch the execution environment.

### db_backup.sh

`db_backup.sh` will back up the database. Save at `backup-%Y%m%d%H%M%S.sql` format in the `backup` folder.

	cd /var/www/html
	/vagrant/command/db_backup.sh

### phpenv.sh

`phpenv.sh` will prepare the specified version of PHP execution environment. You can install the specified version of PHP. Switching the PHP version. And then restart Apache or PHP-FPM by switching the server configuration environment.

	/vagrant/command/phpenv.sh -v 8.2.19 -m php-fpm -s unix

	# help
	/vagrant/command/phpenv.sh -h
