require 'spec_helper'
require 'net/http'
require 'fakeweb'

FakeWeb.register_uri(:get, "http://www.google.com", :body => "Cucumber!")
FakeWeb.register_uri(:get, "http://www.google.com/hello", :body => "Pardon?",
                                                          :status => ["404", "Not Found"])

describe "Google" do 
  
  context "when access via :get to" do

    it "'/' respondes 'Cucumber!'" do
      result = Net::HTTP.get(URI.parse('http://www.google.com'))
      expect(result).to match("Cucumber!")
    end

    it "'/hello' respondes with 404" do
      Net::HTTP.start("www.google.com") do |conn|
        response = conn.get("/hello")
        expect(response.code).to be_eql("404")
      end
    end
  
  end
  
end