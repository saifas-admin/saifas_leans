require 'spec_helper'
require 'test_helpers/json_spec_helper'

RSpec.configure do |config|
  config.include JsonSpecHelper
end

describe LeanDecorator do

  context "decorates helper method" do

    let(:lean) { FactoryGirl.create(:lean).decorate }

    it "lean_to_json" do
      expect(lean.json_result).to be_eql(results(lean.id).to_json)
    end

  end

end
