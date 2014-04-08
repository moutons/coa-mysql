class coa-mysql::install {
	package { 'mysql-server':
		ensure => present,
	}
}
