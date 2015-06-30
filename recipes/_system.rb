#
# Cookbook Name::socrates
# Recipe::system
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

porta_user 'portaj' do
  action :create
  sudo true
  github_username 'jonathanporta'
end

include_recipe 'openssh'
