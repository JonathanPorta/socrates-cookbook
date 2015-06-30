#
# Cookbook Name::socrates
# Recipe::autochef
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

packagecloud_repo 'jonathanporta/socrates' do
  type 'rpm'
  metadata_expire '0'
end

package 'socrates' do
  action [:upgrade]
end
