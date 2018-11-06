class role::master {
  include profile::base
  include profile::master
  include profile::reset_agent
}
