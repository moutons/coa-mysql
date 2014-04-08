# CoA MySQL Module
class coa-mysql {
	include coa-mysql::install
  include coa-mysql::config
  include coa-mysql::service
}
