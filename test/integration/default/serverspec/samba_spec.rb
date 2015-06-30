require 'spec_helper'

describe 'socrates::_samba' do
  describe user('portaj') do
    it { should exist }

    describe file('/home/portaj/.ssh/authorized_keys') do
      it { should be_a_file }
    end
  end

  describe service('smb') do
    describe package('samba') do
      it { should be_installed }
    end

    it { should be_enabled }
    it { should be_running }
  end
end

# To check the ability to access the smbd daemon services, execute the following:
# root#  smbclient -L localhost -U%
