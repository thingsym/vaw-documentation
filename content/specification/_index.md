---
title: "Specification"
date: 2018-11-22T10:26:15Z
lastmod: 2024-08-18T15:26:15Z
draft: false
weight: 70
---

### Server (Selectable)

* [Apache](http://httpd.apache.org)
* [nginx](http://nginx.org)
* [H2O](https://h2o.examp1e.net)

### FastCGI (Selectable)

* [PHP-FPM](http://php-fpm.org) (FastCGI Process Manager)

### Database (Selectable)

* [MariaDB](https://mariadb.org)
* [MySQL](http://www.mysql.com)

### Pre-installing

* [WordPress](https://wordpress.org)
* [phpenv](https://github.com/CHH/phpenv)
* [php-build](https://php-build.github.io)
* [PHP](https://secure.php.net) (Zend OPcache, APCu) via [phpenv](https://github.com/CHH/phpenv)
* [Composer](https://getcomposer.org/) via [phpenv](https://github.com/CHH/phpenv)
* [OpenSSL](https://www.openssl.org) (Selectable)
* [WP-CLI](http://wp-cli.org)
* [Git](http://git-scm.com)

### Develop Tools (Activatable)

* [Subversion](https://subversion.apache.org)
* [gettext](https://www.gnu.org/software/gettext/)
* [nodenv](https://github.com/nodenv/nodenv)
* [Node.js](http://nodejs.org) via [nodenv](https://github.com/nodenv/nodenv)
* [npm](https://www.npmjs.com)
* [Yarn](https://yarnpkg.com/)
* [Grunt](http://gruntjs.com)
* [gulp](http://gulpjs.com)
* [WordPress i18n tools](http://codex.wordpress.org/I18n_for_WordPress_Developers)
* [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)
* [Xdebug](http://xdebug.org)
* Opcache Web Viewer ([Opcache-Status](https://github.com/rlerdorf/opcache-status), [opcache-gui](https://github.com/amnuts/opcache-gui), [ocp.php](https://gist.github.com/ck-on/4959032/))
* [cachetool](http://gordalina.github.io/cachetool/)
* [wrk - Modern HTTP benchmarking tool](https://github.com/wg/wrk)
* [webgrind](https://github.com/jokkedk/webgrind)
* [MailHog](https://github.com/mailhog/MailHog)

### Deploy Tools (Activatable)

* [Dandelion](http://scttnlsn.github.io/dandelion/)
* [Wordmove](https://github.com/welaika/wordmove)

### Other

* [rbenv](https://github.com/sstephenson/rbenv)
* [ruby-build](https://github.com/sstephenson/ruby-build)
* [Ruby](https://www.ruby-lang.org/) via [rbenv](https://github.com/sstephenson/rbenv)

### Deprecated Tools (Recommend migrating to project's local development environment)

We recommend that you use package.json or composer.json to migrate to your project's local development environment.

#### Migrate to package.json

* [plato](https://github.com/es-analysis/plato)
* [stylestats](https://github.com/t32k/stylestats)

#### Migrate to composer.json

* [PHPUnit](https://phpunit.de)
* [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer) & [WordPress Coding Standards](https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards)
* [PHPStan](https://github.com/phpstan/phpstan) (Only PHP7)
* [PHPMD](https://phpmd.org/)
* [PHPUnit Selenium](https://github.com/giorgiosironi/phpunit-selenium)

### Helper command

* after_provision.sh
* before_provision.sh
* centos-box.sh
* db_backup.sh
* npm-installer.sh
* phpenv.sh
