# VAW (Vagrant Ansible WordPress) Documentation

# Hugo install
```
curl -O https://github.com/gohugoio/hugo/releases/download/v0.30/hugo_0.30_Linux-64bit.tar.gz
tar -zxvf hugo_0.30_Linux-64bit.tar.gz
mv hugo /usr/local/bin
rm LICENSE.md README.md
hugo help
```

## Server
```
cd /path/to/vaw-documentation
hugo server --port 3000 --bind 0.0.0.0 -wD --ignoreCache
```

## Deploy to GitHub pages
```
hugo -d /path/to/docs
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
