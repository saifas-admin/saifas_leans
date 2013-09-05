module JsonHelper

	def lean_to_json lean 

      return {} if lean.nil?
	 
    	query   = lean[:lean_child_ids] + lean[:lean_parent_ids]
    	query   = query + lean[:lean_path_ids]
    	leans   = Lean.find(:all, :conditions => { :id => query.uniq }) 
    	childs  = leans.select{ |item| lean[:lean_child_ids].include?(item.id) }
    	childs  = childs.to_a.map{ |item| item.to_h(true) }
    	parent  = leans.select{ |item| lean[:lean_parent_ids].include?(item.id) }
    	parent.first.nil? ? parent = [] : parent = [parent.first.to_h(true)]
    	path    = leans.select{ |item| lean[:lean_path_ids].include?(item.id) }
    	path    = path.to_a.map{ |item| item.to_h(true) }

    	return {
      		:leans        => [lean.to_h],
      		:lean_childs  => childs,
          :lean_paths   => path,
      		:lean_parents => parent
    	}

  	end

end