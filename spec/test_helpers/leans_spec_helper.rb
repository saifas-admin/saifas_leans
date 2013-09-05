module LeansSpecHelper

	def arrays
	{
		:valid => [[], [1,2,3],[''],['GET', 2, 1.2]],
		:invalid => ['GET', 2, {}]
	}
	end

  def valid_child_hash(id = 1)
  {
      :id            => id,
      :name          => '',
      :short_name    => '',
      :logo          => '',
      :childs_count  => 0
  }
  end

  def valid_full_hash(id = 1)
  {
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
  }
  end

end