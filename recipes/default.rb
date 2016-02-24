#
# Cookbook Name::socrates
# Recipe::default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'socrates::_system'
include_recipe 'socrates::_samba'

# TODO: Figure out why the firewall cookbook doesn't seem to work.
# include_recipe 'socrates::_firewall'
