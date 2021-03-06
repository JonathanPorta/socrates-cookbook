#
# Cookbook Name::socrates
# Recipe::samba
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Samba Server Daemon and Utils
package 'samba' do
  action [:install]
  # notifies :create, 'file[/etc/samba/smb.conf]', :immediately
end

# Samba Client - needed for testing
package 'samba-client' do
  action [:install]
  # notifies :create, 'file[/etc/samba/smb.conf]', :immediately
end

# Dropoff the Samba config and kick the process
cookbook_file '/etc/samba/smb.conf' do
  source 'smb.conf'
  notifies :restart, 'service[smb]', :immediately
end

# Notice that the service is named smb, NOT smbd. Carry on.
service 'smb' do
  action %i[enable restart]
end
