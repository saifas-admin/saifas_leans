require 'spec_helper'
require 'test_helpers/leans_spec_helper'

RSpec.configure do |config|
  config.include LeansSpecHelper
end

describe Lean do

	let(:lean) { FactoryGirl.create :lean }

  context "has method" do

    it ".to_h(:child => true)" do
      expect(lean.to_h(true)).to be_eql(valid_child_hash(lean.id))
    end

    it ".to_h(:child => false)" do
      expect(lean.to_h(false)).to be_eql(valid_full_hash(lean.id))
    end

    it ".to_a" do
      expect(lean.to_a).to be_eql([lean])
    end

  end

  context "has as Array" do

    it ":lean_child_ids" do
      arrays[:valid].each do |arr| 
        lean.lean_child_ids = arr
        expect(lean).to be_valid
      end
      arrays[:invalid].each do |arr| 
        lean.lean_child_ids = arr
        expect(lean).to be_invalid
      end
    end

    it ":lean_parent_ids" do
      arrays[:valid].each do |arr| 
        lean.lean_parent_ids = arr
        expect(lean).to be_valid
      end
      arrays[:invalid].each do |arr| 
        lean.lean_parent_ids = arr
        expect(lean).to be_invalid
      end
    end

    it ":lean_path_ids" do
      arrays[:valid].each do |arr| 
        lean.lean_path_ids = arr
        expect(lean).to be_valid
      end
      arrays[:invalid].each do |arr| 
        lean.lean_path_ids = arr
        expect(lean).to be_invalid
      end
    end

  end

end
