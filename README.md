# VAW (Vagrant Ansible WordPress) Documentation

## Docker environment

### Server

```
cd /path/to/vaw-documentation
docker-compose up -d
```

Browse site on http://localhost:1313/vaw/

### Generate documentation

```
docker-compose run --rm hugo -d public --minify
```

## Local development environment

### Install Hugo

```
cd /path/to/vaw-documentation
sudo bash bin/installer-hugo.sh
hugo help
```

### Start server

```
hugo server --bind 0.0.0.0 -wD --ignoreCache --minify
```

Browse site on http://localhost:1313/vaw/

### Generate documentation

```
hugo -d public --minify
```

## Contribution

### Patches and Bug Fixes

Small patches and bug reports can be submitted a issue tracker in Github. Forking on Github is another good way. You can send a pull request.

1. Fork [VAW Documentation](https://github.com/thingsym/vaw-documentation) from GitHub repository
2. Create a feature branch: git checkout -b my-new-feature
3. Commit your changes: git commit -am 'Add some feature'
4. Push to the branch: git push origin my-new-feature
5. Create new Pull Request

## License

distributed under [GPLv3](https://www.gnu.org/licenses/gpl-3.0.html).
