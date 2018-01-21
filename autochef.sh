#!/bin/bash
echo 'Installing jq...'
dnf install -y jq

echo 'Starting update of jonathanporta/ops package...'
dnf install -y https://github.com/jonathanporta/ops/releases/download/0.0.4/ops-0.0.4-local.git860078f.x86_64.rpm

echo 'Starting update of socrates-cookbook package...'
dnf install -y $(gh latest jonathanporta/socrates-cookbook --download-url)

echo 'Kicking off chef converge...'
chef-solo -c /opt/jonathanporta/socrates-cookbook/solo.rb -j /opt/jonathanporta/socrates-cookbook/solo.json

echo 'Handling the great wall of fire-d...'
/opt/jonathanporta/socrates-cookbook/firewalld.sh
