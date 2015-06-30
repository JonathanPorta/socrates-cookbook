require 'spec_helper'

describe 'socrates::autochef' do
  describe package('socrates') do
    it { should be_installed }
  end
end
