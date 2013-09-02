require 'json'

require 'spec_helper'
require 'test_helpers/leans_controller_spec_helper'

RSpec.configure do |config|
  config.include LeansControllerSpecHelper
end

describe LeansController do

  fixtures :leans

  describe "GET 'show'" do

    it "should return http success" do
      	get 'show'
      	response.should be_success
    end

    it "should return json hash" do
    	get 'show', :id => 1, :format => :json
    	response.body.should be_eql(results[:id1].to_json)
      get 'show', :id => 2, :format => :json
      response.body.should be_eql(results[:id2].to_json)
      get 'show', :id => 3, :format => :json
      response.body.should be_eql(results[:id3].to_json)
    end

    it "should make request_log" do
      get 'show', :id => 1, :format => :json
      log = RequestLogs.last 
      log.should be_same(logs[:id1])
    end

  end

  describe "routing" do

    it "should map '/' to {:controller => leans, :action => show}" do
      expect(:get => '/').to route_to({:controller => 'leans', :action => 'show'})
    end

    it "should map '/leans/:id' to {:controller => leans, :action => show, :id => id}" do
      expect(:get => '/leans/:id').to route_to({:controller => 'leans', 
                                                :action => 'show', :id => ":id"})
    end

  end

end
