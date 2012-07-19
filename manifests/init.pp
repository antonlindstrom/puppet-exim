# == Class: exim
#
# Installing exim4.
#
# === Parameters
#
# Document parameters here.
#
# [ensure]
#   ensure => present|absent
#
# === Examples
#
#  class { exim:
#    ensure => present,
#  }
#
# === Authors
#
# Anton Lindstrom <anton@alley.se>
#
class exim($ensure='present') {

  class { 'exim::package':
    ensure => $ensure,
  }

  class { 'exim::service':
    ensure => $ensure,
  }

  class { 'exim::config':
    ensure => $ensure,
  }
}
