#!/bin/bash -e
#
# Download and build php
#

PHP_VERSION=${PHP_VERSION:-php-7.2.24}
PHP_TARBALL=$PHP_VERSION.tar.gz
WORKSPACE=${WORKSPACE:-php}
PHP_DISTRIBUTIONS_URL=https://www.php.net/distributions

CUR_DIR=$(pwd)

# Remove old installation of PHP if one exists
rm -rf $WORKSPACE || true
mkdir -p $WORKSPACE

echo "Downloading, building and installing PHP in ${WORKSPACE}"
cd $WORKSPACE
curl $PHP_DISTRIBUTIONS_URL/$PHP_TARBALL --output $PHP_TARBALL

tar -xvf $PHP_TARBALL
cd $PHP_VERSION

./configure \
    --prefix=$WORKSPACE/install-php-$PHP_VERSION \
    --disable-all \
    --enable-pdo \
    --enable-cli
make
make install

cd $CUR_DIR
