class exim::config($ensure='present') {

  file { '/etc/exim4/update-exim4.conf.conf':
    ensure  => $ensure,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('exim/update-exim.conf.conf.erb'),
    notify  => Class['exim::service'],
  }

}
