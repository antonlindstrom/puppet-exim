require 'spec_helper'

describe 'exim::aliases', :type => :class do
  let(:params) { { :mailaddress => 'anton@example.com' } }

  it do should contain_file('/etc/aliases').with(
    'ensure'  => 'present',
    'owner'   => 'root',
    'group'   => 'root',
    'mode'    => '0644'
  ) end

end
