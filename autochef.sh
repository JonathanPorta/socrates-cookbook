#!/bin/bash

curl https://packagecloud.io/install/repositories/jonathanporta/socrates/script.rpm.sh | bash

yum install --assumeyes chef-dk socrates
yum update --assumeyes socrates

chef-solo -c solo.rb -j solo.json
