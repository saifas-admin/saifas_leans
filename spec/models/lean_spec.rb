require 'spec_helper'
require 'test_helpers/leans_spec_helper'

RSpec.configure do |config|
  config.include LeansSpecHelper
end

describe Lean do

	fixtures :leans

	before(:each) do
		@lean = Lean.create(valid_lean_hash)
	end
  
	it "should has :lean_parent_ids as Array" do
	  arrays[:valid].each do |arr| 
	    @lean.lean_parent_ids = arr
	    @lean.should be_valid
	  end
	  arrays[:invalid].each do |arr| 
	    @lean.lean_parent_ids = arr
	    @lean.should_not be_valid
	  end
	end
	
	it "should has :lean_child_ids as Array" do
	  arrays[:valid].each do |arr| 
	    @lean.lean_child_ids = arr
	    @lean.should be_valid
	  end
	  arrays[:invalid].each do |arr| 
	    @lean.lean_child_ids = arr
	    @lean.should_not be_valid
	  end
	end 

	it "should has :lean_child_ids as Array" do
	  arrays[:valid].each do |arr| 
	    @lean.lean_child_ids = arr
	    @lean.should be_valid
	  end
	  arrays[:invalid].each do |arr| 
	    @lean.lean_child_ids = arr
	    @lean.should_not be_valid
	  end
	end 

	it "should has valid .to_h(:child => true) method" do
	  @lean.to_h(true).should be_eql(valid_child_hash(@lean.id))
	end

	it "should has valid .to_h(:child => false) method" do
	  @lean.to_h(false).should be_eql(valid_full_hash(@lean.id))
	end

	it "should has valid .to_a method" do
	  @lean.to_a.should be_eql([@lean])
	end

end
