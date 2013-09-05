module JsonSpecHelper

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

end