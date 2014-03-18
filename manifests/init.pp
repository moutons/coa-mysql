# CoA MySQL Module
class coa-mysql {
  class { '::coa-mysql::config': } ->
  class { '::coa-mysql::service': } ->
  Class['coa-mysql']
}
