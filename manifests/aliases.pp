class exim::aliases($mailaddress, $ensure='present') {

  file { '/etc/aliases':
    ensure  => $ensure,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('exim/aliases.erb'),
    notify  => Class['exim::service'],
  }

}
