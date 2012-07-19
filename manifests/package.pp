class exim::package($ensure='present') {

  package { 'exim4':
    ensure => $ensure,
  }

}
