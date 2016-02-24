#!/bin/bash

project='socrates'
version=$(cat metadata.rb | grep version | grep -o '[0-9].[0-9].[0-9]')
iteration="$TRAVIS_BUILD_NUMBER.git$(git rev-parse --short HEAD)"
architecture='x86_64'
url="https://github.com/jonathanporta/${project}"
vendor='JonathanPorta.com'
description='Socrates cookbook'
install_prefix="/opt/jonathanporta/${project}"

fpm -s dir -t rpm \
    --name "${project}" \
    --version "${version}" \
    --iteration "${iteration}" \
    --architecture "${architecture}" \
    --url "${url}" \
    --vendor "${vendor}" \
    --description "${description}" \
    --prefix "$install_prefix" \
    cookbooks \
    solo.json \
    solo.rb \
    autochef.sh \
    firewalld.sh \
    README.md
