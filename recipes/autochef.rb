#
# Cookbook Name::socrates
# Recipe::auochef
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

packagecloud_repo "jonathanporta/socrates" do
  type 'rpm'
  metadata_expire '0'
end

porta_user 'portaj' do
  action :create
  sudo true
  github_username 'jonathanporta'
end

# include_recipe 'openssh'
