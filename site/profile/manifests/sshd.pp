class profile::sshd {
    sshd_config {'Disable Root Login':
          ensure => absent,
          key    => 'PermitRootLogin'
      } 
    sshd_config { 'PermitRootLogin':
          ensure => present,
          key    => 'PermitRootLogin',
          value  => 'yes',
     }
}
