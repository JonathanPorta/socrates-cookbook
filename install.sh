#!/bin/bash
yum install -y https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.6.0-1.el6.x86_64.rpm

curl https://packagecloud.io/install/repositories/jonathanporta/socrates/script.rpm.sh | bash
yum install -y socrates

chef-solo -c /opt/jonathanporta/socrates/solo.rb -o "recipe[socrates::autochef]"
