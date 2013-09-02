module LeansControllerSpecHelper

	def results
	{
            :id1 => {
                  :leans => [{
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
                        :lean_path_ids    => [],
                        :childs_count      => 2
                  }],
                  :lean_childs => [
                        {
                              :id            => 2,
                              :name          => 'Information',
                              :short_name    => 'info',
                              :logo          => 'info.png',
                              :childs_count   => 0
                        },
                        {
                              :id            => 3,
                              :name          => 'Application Map',
                              :short_name    => 'map',
                              :logo          => 'map.png',
                              :childs_count   => 0
                        }
                  ],
                  :lean_paths => [],
                  :lean_parents => []
            },
            :id2 => {
                  :leans => [{
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
                        :lean_path_ids    => [1],
                        :childs_count      => 0
                  }],
                  :lean_childs => [],
                  :lean_paths => [
                        {
                              :id            => 1,
                              :name          => 'Home',
                              :short_name    => 'home',
                              :logo          => 'home.png',
                              :childs_count   => 2
                        }
                  ],
                  :lean_parents => [
                        {
                              :id            => 1,
                              :name          => 'Home',
                              :short_name    => 'home',
                              :logo          => 'home.png',
                              :childs_count   => 2
                        }
                  ]
            },
            :id3 => {
                  :leans => [{
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
                        :childs_count      => 0
                  }],
                  :lean_childs => [],
                  :lean_paths => [
                        {
                              :id            => 1,
                              :name          => 'Home',
                              :short_name    => 'home',
                              :logo          => 'home.png',
                              :childs_count   => 2
                        }
                  ],
                  :lean_parents => [
                        {
                              :id            => 1,
                              :name          => 'Home',
                              :short_name    => 'home',
                              :logo          => 'home.png',
                              :childs_count   => 2
                        }
                  ]
            }
      }
	end

      def logs
      {
            :id1 => {
                        :user_id    => 2,
                        :remote_ip  => '0.0.0.0',
                        :format     => 'application/json',
                        :method     => 'GET',
                        :protocol   => 'http://',
                        :controller => 'leans',
                        :action     => 'show',
            }
      }
      end

end