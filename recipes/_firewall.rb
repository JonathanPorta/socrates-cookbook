#
# Cookbook Name::socrates
# Recipe::firewall
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Configure the firewall to allow access to services
firewall 'default' do
  log_level :high
  action :install
end

# SSH, obviously.
firewall_rule 'ssh' do
  port [22]
  command :allow
  # notifies :save, 'firewall[default]', :delayed
end

# Samba services
firewall_rule 'smbd' do
  port [135, 139, 445]
  protocol :tcp
  command :allow
  # notifies :save, 'firewall[default]', :delayed
end

firewall_rule 'nmbd' do
  port [137, 138]
  protocol :udp
  command :allow
  # notifies :save, 'firewall[default]', :delayed
end
