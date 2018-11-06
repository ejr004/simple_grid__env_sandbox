class role::lightweight_component (
  $id = 1
){
    include profile::base
    notify {'Allow Root Login and copy ssh keys from master':}
    include profile::sshd
    notify {"Reset puppet agent":}
    include profile::reset_agent
}
