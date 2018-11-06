class profile::sshd {
    file {"config dir":
      path   => "/etc/simple_grid",
      ensure => directory,
      mode   => "0777",
    }
    file {"Copy public key of master to config dir":
      source => "puppet:///simple_grid/simple_host_key.pub",
      path   => "/etc/simple_grid/simple_host_key.pub",
      mode   => "644"
    }
    sshd_config {'Disable Root Login':
          ensure => absent,
          key    => 'PermitRootLogin'
      } 
    sshd_config { 'PermitRootLogin':
          ensure => present,
          key    => 'PermitRootLogin',
          value  => 'yes',
     }
     # TODO ensure you do not keep adding keys on each run
    file_line {'append public key':
      path => '/root/.ssh/authorized_keys',
      line => file('/etc/simple_grid/simple_host_key.pub'),
    }
    # Copy public key
}
