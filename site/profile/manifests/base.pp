class profile::base {
    include 'docker'
    include 'git'
    class {'python':
        version    => 'system',
        pip        => 'present',
        virtualenv => 'present'
    }
}
