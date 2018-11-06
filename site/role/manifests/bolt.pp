 class role::bolt {
include profile::sshd
include puppet-ssh_keygen  
  
    ssh_keygen { 'root':
    filename => '/etc/ssh/ssh_host_rsa_key'
    }
    ssh_authorized_key { 'root@puppet-server':
    ensure    => present,
    user    => 'root',
    type  => 'ssh-rsa',
    }
    #  sshkey { 'generate key':
    #name   => $::hostname,
    #ensure => present,
    #type   => 'ssh-rsa',
    # }
 notice("Test")
  ssh_authorized_key { 'root@puppet-server':}

}
