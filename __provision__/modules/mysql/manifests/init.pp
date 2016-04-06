class mysql {

    package { 'mysql-server':
        ensure => installed,
    }

    service { 'mysql':
        ensure  => running,
        require => Package['mysql-server'],
    }

    exec { 'set-mysql-password':
        unless => "mysqladmin -uroot -proot status",
        path => ["/bin", "/usr/bin"],
        command => "mysqladmin -uroot password root",
        require => Service["mysql"],
    }

    file { '/etc/mysql/my.cnf':
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => '0644',
        source  => "puppet:///modules/mysql/my.cnf",
        require => Package['mysql-server'],
        notify => Service["mysql"],
    }

    exec { 'create user':
        command =>  "mysql -uroot -proot -e \"CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'vagrant';\" &&
                    mysql -uroot -proot -e \"GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'localhost' WITH GRANT OPTION;\" &&
                    mysql -uroot -proot -e \"CREATE USER 'vagrant'@'%' IDENTIFIED by 'vagrant';\" &&
                    mysql -uroot -proot -e \"GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'%' WITH GRANT OPTION;\"",
        path    => "/usr/bin",
        require => Service["mysql"]
    }
}