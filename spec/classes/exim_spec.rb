require 'spec_helper'

describe 'exim', :type => :class do

  it { should include_class('exim::package') }
  it { should include_class('exim::service') }
  it { should include_class('exim::config') }

end
