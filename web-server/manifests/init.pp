class web-server::init {

  package { httpd: ensure => installed }

  service { httpd:
    ensure => running,
    enable => true,
    require => Package["httpd"],
  }

  file { 'index page':
    owner   => "root",
    group   => "root",
    path    => "/var/www/html/index.html",
    source  => "puppet:///modules/web-server/index_$cloud.html",
    require => Package["httpd"],
  }

  file { 'logo':
    owner   => "root",
    group   => "root",
    path    => "/var/www/html/logo.png",
    source  => "puppet:///modules/web-server/$cloud.png",
    require => Package["httpd"],
  }

}
