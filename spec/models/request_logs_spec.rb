require 'spec_helper'
require 'test_helpers/request_logs_spec_helper'

RSpec.configure do |config|
  config.include RequestLogsSpecHelper
end

describe RequestLogs do

  fixtures :request_logs

	before(:each) do
		@requestlog = RequestLogs.new(valid_log_hash)
	end
  
  it "should has :user_id == 2" do
  	@requestlog.user_id = 0
  	@requestlog.should_not be_valid
    @requestlog.user_id = 2
    @requestlog.should be_valid
  end

  it "should has valid :remote_ip" do
    ip_addresses[:valid].each do |ip| 
      @requestlog.remote_ip = ip
      @requestlog.should be_valid
    end
    ip_addresses[:invalid].each do |ip| 
      @requestlog.remote_ip = ip
      @requestlog.should_not be_valid
    end
  end

  it "should has valid :format" do
    formats[:valid].each do |format| 
      @requestlog.format = format
      @requestlog.should be_valid
    end
    formats[:invalid].each do |format| 
      @requestlog.format = format
      @requestlog.should_not be_valid
    end
  end

  it "should has valid :method" do 
    methods[:valid].each do |method| 
      @requestlog.method = method
      @requestlog.should be_valid
    end
    methods[:invalid].each do |method| 
      @requestlog.method = method
      @requestlog.should_not be_valid
    end
  end

  it "should has valid :protocol" do
    protocols[:valid].each do |protocol| 
      @requestlog.protocol = protocol
      @requestlog.should be_valid
    end
    protocols[:invalid].each do |protocol| 
      @requestlog.protocol = protocol
      @requestlog.should_not be_valid
    end
  end

  it "should has valid :port" do
    ports[:valid].each do |port| 
      @requestlog.port = port
      @requestlog.should be_valid
    end
    ports[:invalid].each do |port| 
      @requestlog.port = port
      @requestlog.should_not be_valid
    end
  end

  it "should has valid :url" do 
    urls[:valid].each do |url| 
      @requestlog.url = url
      @requestlog.should be_valid
    end
    urls[:invalid].each do |url| 
      @requestlog.url = url
      @requestlog.should_not be_valid
    end
  end

  it "should has valid :created_on" do
    dates[:valid].each do |date| 
      @requestlog.created_on = date
      @requestlog.should be_valid
    end
    dates[:invalid].each do |date| 
      @requestlog.created_on = date
      @requestlog.should_not be_valid
    end
  end

  it "should not has empty :parameters" do
    @requestlog.parameters = ''
    @requestlog.should_not be_valid
  end

  it "should not has empty :controller" do
    @requestlog.controller = ''
    @requestlog.should_not be_valid
  end

  it "should not has empty :action" do
    @requestlog.action = ''
    @requestlog.should_not be_valid
  end

  it "should not has empty :host" do
    @requestlog.host = ''
    @requestlog.should_not be_valid
  end

  it "should save in DB" do
    requestlogs = RequestLogs.create(valid_log_hash)
    requestlogs.save
    requestlogs.should be_valid
  end

  it "should read from DB" do
    requestlogs = RequestLogs.first(:conditions => { :id => 1 })
    valid_log_hash.each_key do |key|
      requestlogs[key].should be_eql(valid_log_hash.fetch(key))
    end
  end

end