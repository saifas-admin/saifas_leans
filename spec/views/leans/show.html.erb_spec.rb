require 'spec_helper'

describe "leans#show view" do

  context "when render has" do

    let(:lean) { FactoryGirl.create :lean }

    it "header h1" do
      @lean = lean
      render :template => "leans/show"
      expect(rendered).to have_tag('h1', 'Lean ' + lean.id.to_s)
    end

    it "to_lean form" do
      @lean = lean
      render :template => "leans/show"
      expect(rendered).to have_tag('form', :with => 
                                          { :name => 'to_lean',
                                            :action => 'leans'}) do
        with_tag 'input', :with => {:type => 'text', :name => "id"}
        with_tag 'input', :with => {:type => 'submit', :value => "Go"}
      end
    end

  end
  
end
