class role::lightweight_component (
  $id = 1
){
    include profile::base
    notify{'Reset Puppet Agent':}
    include profile::reset_agent
    notify {'Allow Root Login':}
    include profile::sshd
}
