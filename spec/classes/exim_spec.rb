require 'spec_helper'

describe 'exim', :type => :class do

  describe 'packages' do
    describe 'should include packages' do
      it { should contain_package('exim4').with_ensure('present') }
    end

    describe 'should _not_ include packages' do
      let(:params) { { :ensure => 'absent' } }
      it { should contain_package('exim4').with_ensure('absent') }
    end
  end

  describe 'services' do
    describe 'should have services running' do
      it { should contain_service('exim4').with_ensure('running') }
    end

    describe 'should _not_ have services running' do
      let(:params) { { :ensure => 'absent' } }
      it { should contain_service('exim4').with_ensure('stopped') }
    end
  end

  describe 'files' do
    it do should contain_file('/etc/exim4/update-exim4.conf.conf').with(
      'ensure'  => 'present',
      'owner'   => 'root',
      'group'   => 'root',
      'mode'    => '0644'
    ) end
  end

end
