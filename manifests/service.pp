# CoA Custom MySQL Service Control manifest
class coa-mysql::service {
  service { 'mysqld':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Class['coa-mysql::config'],
  }
}
