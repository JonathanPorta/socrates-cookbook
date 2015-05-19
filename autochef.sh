#!/bin/bash

yum upgrade -y socrates
chef-solo -c /opt/jonathanporta/socrates/solo.rb -j /opt/jonathanporta/socrates/solo.json
