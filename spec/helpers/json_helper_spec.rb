require 'spec_helper'
require 'test_helpers/json_spec_helper'

RSpec.configure do |config|
  config.include JsonSpecHelper
end

describe JsonHelper do

	fixtures :leans

  	it "should has valid lean_to_json method" do
  		@lean = Lean.first(:conditions => {:id => 1})
  		lean_to_json(@lean).should be_eql(results[:id1])
  		@lean = Lean.first(:conditions => {:id => 2})
  		lean_to_json(@lean).should be_eql(results[:id2])
  		@lean = Lean.first(:conditions => {:id => 3})
  		lean_to_json(@lean).should be_eql(results[:id3])
  	end

end