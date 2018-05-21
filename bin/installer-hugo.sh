#!/usr/bin/env bash

set -e

VERSION=0.38.1
ARCH=Linux-64bit
EXTENSION=tar.gz

usage() {
  echo "Hugo installer Version 0.1.0"
  echo "usage: $0 [<VERSION>] [<ARCH>] [<EXTENSION>]"
  echo "usage: $0 --help"
  exit 0
}

if [ "${1:-}" = "--help" ]; then
  usage
fi

if [ ! -z "${1}" ]; then
  VERSION=$1
fi

if [ ! -z "${2}" ]; then
  ARCH=$2
fi

if [ ! -z "${3}" ]; then
  EXTENSION=$3
fi

echo "Download https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_${ARCH}.${EXTENSION}"
curl --create-dirs -o download/hugo_${VERSION}_${ARCH}.${EXTENSION} -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_${ARCH}.${EXTENSION}

tar -zxvf download/hugo_${VERSION}_${ARCH}.${EXTENSION} -C download

mv download/hugo /usr/local/bin
rm -rf download

exit 0
