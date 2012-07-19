require 'spec_helper'

describe 'exim::package', :type => :class do

  describe 'should include packages' do
    it { should contain_package('exim4').with_ensure('present') }
  end

  describe 'should _not_ include packages' do
    let(:params) { { :ensure => 'absent' } }
    it { should contain_package('exim4').with_ensure('absent') }
  end

end
