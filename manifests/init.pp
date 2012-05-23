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

  $service_status = $ensure ? {
    absent  => 'stopped',
    present => 'running',
    default => fail('Ensure needs to be absent or present'),
  }

  package { 'exim4':
    ensure => $ensure,
  }

  service { 'exim4':
    ensure  => $service_status,
    require => Package['exim4'],
  }

  file { '/etc/exim4/update-exim4.conf.conf':
    ensure  => $ensure,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('exim/update-exim.conf.conf.erb'),
    notify  => Service['exim4'],
  }

}
