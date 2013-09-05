require 'spec_helper'
require 'test_helpers/json_spec_helper'

RSpec.configure do |config|
  config.include JsonSpecHelper
end

describe JsonHelper do

    let(:lean) { FactoryGirl.create :lean }

  	it "lean_to_json(:lean)" do
  		lean_to_json(lean).should be_eql(results(lean.id))
  	end

end