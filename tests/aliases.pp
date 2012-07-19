include exim

class { 'exim::aliases':
  ensure      => present,
  mailaddress => 'anton@example.com',
}
