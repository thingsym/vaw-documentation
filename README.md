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
