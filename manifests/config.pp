# CoA MySQL Configuration module
class coa-mysql::config {
  file { '/etc/my.cnf':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/coa-mysql/etc_my.cnf',
  }
}
