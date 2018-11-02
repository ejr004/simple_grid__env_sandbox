class role::lightweight_component (
  $id = 1
){
  include profile::base
  class{ "profile::lightweight_component":
    id => $id, 
  }
}
