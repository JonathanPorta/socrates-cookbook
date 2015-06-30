#
# Cookbook Name::socrates
# Recipe::samba
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'samba' do
  action [:install]
end

# Notice that the service is named smb, NOT smbd. Carry on.
service 'smb' do
  action [:enable, :start]
end
