module LeansControllerSpecHelper

      def results(id = 1)
      {
            :leans => [{
                  :id            => id,
                  :name          => '',
                  :short_name    => '',
                  :description   => '',
                  :info          => '',
                  :logo          => '',
                  :wiki          => '',
                  :url           => '',
                  :link          => '',
                  :footer        => '',
                  :label         => '',
                  :form_name     => '',
                  :lean_parent_ids  => [],
                  :lean_child_ids   => [],
                  :lean_path_ids    => [],
                  :childs_count     => 0
            }],
            :lean_childs      => [],
            :lean_paths       => [],
            :lean_parents     => []
      }
      end

      def logs
      {
            :user_id    => 2,
            :remote_ip  => '0.0.0.0',
            :format     => 'application/json',
            :method     => 'GET',
            :protocol   => 'http://',
            :controller => 'leans',
            :action     => 'show',
      }
      end

end