Lean.create({
    :id            => 1,
    :name          => 'Home',
    :short_name    => 'home',
    :description   => '',
    :info          => '',
    :logo          => 'home.png',
    :wiki          => '',
    :url           => '',
    :link          => '',
    :footer        => '',
    :label         => '',
    :form_name     => '',
    :lean_parent_ids  => [],
    :lean_child_ids   => [2, 3],
    :lean_path_ids    => []
})

Lean.create({
    :id            => 2,
    :name          => 'Information',
    :short_name    => 'info',
    :description   => '',
    :info          => '',
    :logo          => 'info.png',
    :wiki          => '',
    :url           => '',
    :link          => '',
    :footer        => '',
    :label         => '',
    :form_name     => '',
    :lean_parent_ids  => [1],
    :lean_child_ids   => [],
    :lean_path_ids    => [1]
})

Lean.create({
	:id            => 3,
    :name          => 'Application Map',
    :short_name    => 'map',
    :description   => '',
    :info          => '',
    :logo          => 'map.png',
    :wiki          => '',
    :url           => '',
    :link          => '',
    :footer        => '',
    :label         => '',
    :form_name     => '',
    :lean_parent_ids  => [1],
    :lean_child_ids   => [],
    :lean_path_ids    => [1],
})