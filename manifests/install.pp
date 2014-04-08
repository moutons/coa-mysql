class coa-mysql::install {
	package { 'mysqld':
		ensure => present,
	}
}
