#!/bin/bash

curl https://packagecloud.io/install/repositories/jonathanporta/socrates/script.rpm.sh | bash

yum install -y chef-dk socrates

chef-solo -c /opt/jonathanporta/socrates/solo.rb -o "recipe[socrates::autochef]"
