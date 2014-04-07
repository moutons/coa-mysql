# CoA MySQL Module
class coa-mysql {
  include coa-mysql::config
  include coa-mysql::service
}

class { '::mysql::server':
  root_password => 'puppet',
  $users = {
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
