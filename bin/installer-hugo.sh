#!/usr/bin/env bash

set -e

VERSION=0.81.0
ARCH=Linux-64bit
EXTENDED=true
FILENAME_EXTENSION=tar.gz

usage() {
  echo "Hugo installer Version 0.2.0"
  echo "usage: $0 [<VERSION>] [<EXTENDED>] [<ARCH>] [<FILENAME_EXTENSION>]"
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
  EXTENDED=$2
fi

if [ ! -z "${3}" ]; then
  ARCH=$3
fi

if [ ! -z "${4}" ]; then
  FILENAME_EXTENSION=$4
fi

if "${EXTENDED}"; then
  echo "Download https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_${ARCH}.${FILENAME_EXTENSION}"
  curl --create-dirs -o download/hugo_extended_${VERSION}_${ARCH}.${FILENAME_EXTENSION} -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_${ARCH}.${FILENAME_EXTENSION}
  tar -zxvf download/hugo_extended_${VERSION}_${ARCH}.${FILENAME_EXTENSION} -C download
else
  echo "Download https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_${ARCH}.${FILENAME_EXTENSION}"
  curl --create-dirs -o download/hugo_${VERSION}_${ARCH}.${FILENAME_EXTENSION} -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_${ARCH}.${FILENAME_EXTENSION}
  tar -zxvf download/hugo_${VERSION}_${ARCH}.${FILENAME_EXTENSION} -C download
fi

mv download/hugo /usr/local/bin
rm -rf download

exit 0
