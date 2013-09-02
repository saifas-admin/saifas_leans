module LeansSpecHelper

	def arrays
	{
		:valid => [[], [1,2,3],[''],['GET', 2, 1.2]],
		:invalid => ['GET', 2, {}]
	}
	end

	def valid_lean_hash
	{
  		:name 			   => 'Home',
  		:short_name 	 => 'home',
  		:description 	 => 'Root node',
  		:info 			   => 'root',
  		:logo 			   => 'home.png',
  		:wiki 			   => 'http://wikipedia.org/',
  		:url 			     => 'http://rails.org',
  		:link 			   => 'http://www.google.com',
  		:footer 		   => 'Hello!',
  		:label 			   => 'none',
  		:form_name 		 => 'Get started',
  		:lean_parent_ids 	=> [],
  		:lean_child_ids 	=> [],
  		:lean_path_ids 		=> []
	}
	end

  def valid_child_hash(id = 1)
  {
      :id            => id,
      :name          => 'Home',
      :short_name    => 'home',
      :logo          => 'home.png',
      :childs_count  => 0
  }
  end

  def valid_full_hash(id = 1)
  {
      :id            => id,
      :name          => 'Home',
      :short_name    => 'home',
      :description   => 'Root node',
      :info          => 'root',
      :logo          => 'home.png',
      :wiki          => 'http://wikipedia.org/',
      :url           => 'http://rails.org',
      :link          => 'http://www.google.com',
      :footer        => 'Hello!',
      :label         => 'none',
      :form_name     => 'Get started',
      :lean_parent_ids  => [],
      :lean_child_ids   => [],
      :lean_path_ids    => [],
      :childs_count      => 0
  }
  end

end