class exim::service($ensure='present') {

  $service_status = $ensure ? {
    absent  => 'stopped',
    present => 'running',
    default => fail('Ensure needs to be absent or present'),
  }

  service { 'exim4':
    ensure  => $service_status,
    require => Class['exim::package'],
  }

}
