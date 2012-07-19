require 'spec_helper'

describe 'exim::service', :type => :class do

  describe 'should have services running' do
    it { should contain_service('exim4').with_ensure('running') }
  end

  describe 'should _not_ have services running' do
    let(:params) { { :ensure => 'absent' } }
    it { should contain_service('exim4').with_ensure('stopped') }
  end

end
