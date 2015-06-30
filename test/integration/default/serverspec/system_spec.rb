require 'spec_helper'

describe 'socrates::_system' do
  describe user('portaj') do
    it { should exist }

    describe file('/home/portaj/.ssh/authorized_keys') do
      it { should be_a_file }
    end
  end

  describe service('sshd') do
    it { should be_enabled }
    it { should be_running }

    describe port(22) do
      it { should be_listening }
    end
  end
end
