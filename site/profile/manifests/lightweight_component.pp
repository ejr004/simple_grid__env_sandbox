class profile::lightweight_component (
    $id
){
    class {'simple_grid::lightweight_component':
        id => $id,
    }
}
