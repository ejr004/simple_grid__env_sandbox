class profile::reset_agent {
  file_line { 'change env to master':
  path  => '/etc/puppetlabs/puppet/puppet.conf',
  line  => 'environment = master',
  match => 'environment = pre_config',#TODO regec
}

  file_line { 'change runtime to 30 min':
  path  => '/etc/puppetlabs/puppet/puppet.conf',
  line  => 'runinterval = 30',
  match => 'runinterval = 0', #TODO regex
}
}
