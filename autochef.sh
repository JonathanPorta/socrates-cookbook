#!/bin/bash

echo 'Starting update of socrates package...'
yum upgrade -y socrates

echo 'Kicking off chef converge...'
chef-solo -c /opt/jonathanporta/socrates/solo.rb -j /opt/jonathanporta/socrates/solo.json

echo 'Handling the great wall of fire-d...'
/opt/jonathanporta/socrates/firewalld.sh
