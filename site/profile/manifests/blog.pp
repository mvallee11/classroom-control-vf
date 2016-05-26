class profile::blog {
  class { 'apache':}
  class { 'apache::mod::php':}
  class { 'mysql::server':
    root_password => 'supersecretdontgiveitout',
  }  
  class { 'mysql::binding':
    php_enable => true,
  }

  class { 'wordpress':
  install_dir => '/var/www/wordpress',
  }
}
