class profile::master {
  file {'Create config dir':
    ensure => directory,
    path   => '/etc/simple_grid',
    mode   => "0777", 
 }
    #2. create fileserver.conf
  file {"add fileserver.conf":
    ensure  => present,
    path    => "/etc/puppetlabs/puppet/fileserver.conf",
    content => template('simple_grid/fileserver.conf.erb')
  }
  ssh_keygen {'root':
    filename => '/etc/ssh/simple_host_key'
  }
  file { 'Copy simple_host_key.pub to config_dir' :
    source => '/etc/ssh/simple_host_key.pub',
    path   => '/etc/simple_grid/simple_host_key.pub',
    ensure => present,
  }
  #include s:qimple_grid
}
