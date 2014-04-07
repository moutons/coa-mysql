# CoA MySQL Module
class coa-mysql {
  include coa-mysql::config
  include coa-mysql::service
}

class { '::mysql::server':
  root_password => 'puppet',
  $users = {
    'drupal2@*'     => {
      ensure        => 'present',
      password_hash => '*BEC8AE1C6D76DCC3A13D1C04DB54D3BFA6D979EB',
    },
  },
  $grants = {
    'drupal2@*/drupal1.*' => {
      ensure              => 'present',
      options             => ['GRANT'],
      privileges          => ['ALL'],
      table               => 'drupal1.*',
      user                => 'drupal2@*',

    },
  },
  $databases = {
    'drupal1' => {
      ensure  => 'present',
      charset => 'utf8',
    },
  },
}
