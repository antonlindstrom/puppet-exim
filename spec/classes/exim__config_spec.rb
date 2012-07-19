require 'spec_helper'

describe 'exim::config', :type => :class do

  it do should contain_file('/etc/exim4/update-exim4.conf.conf').with(
    'ensure'  => 'present',
    'owner'   => 'root',
    'group'   => 'root',
    'mode'    => '0644'
  ) end

end
