require 'spec_helper'
require 'test_helpers/request_logs_spec_helper'

RSpec.configure do |config|
  config.include RequestLogsSpecHelper
end

describe RequestLogs do

  let(:requestlog) { FactoryGirl.create :request_logs }

  context "has valid" do

    it ":remote_ip" do
      ip_addresses[:valid].each do |ip| 
        requestlog.remote_ip = ip
        expect(requestlog).to be_valid
      end
      ip_addresses[:invalid].each do |ip| 
        requestlog.remote_ip = ip
        expect(requestlog).to be_invalid
      end
    end

    it ":format" do
      formats[:valid].each do |format| 
        requestlog.format = format
        expect(requestlog).to be_valid
      end
      formats[:invalid].each do |format| 
        requestlog.format = format
        expect(requestlog).to be_invalid
      end
    end

    it ":method" do 
      methods[:valid].each do |method| 
        requestlog.method = method
        expect(requestlog).to be_valid
      end
      methods[:invalid].each do |method| 
        requestlog.method = method
        expect(requestlog).to be_invalid
      end
    end

    it ":protocol" do
      protocols[:valid].each do |protocol| 
        requestlog.protocol = protocol
        expect(requestlog).to be_valid
      end
      protocols[:invalid].each do |protocol| 
        requestlog.protocol = protocol
        expect(requestlog).to be_invalid
      end
    end

    it ":port" do
      ports[:valid].each do |port| 
        requestlog.port = port
        expect(requestlog).to be_valid
      end
      ports[:invalid].each do |port| 
        requestlog.port = port
        expect(requestlog).to be_invalid
      end
    end

    it ":url" do 
      urls[:valid].each do |url| 
        requestlog.url = url
        expect(requestlog).to be_valid
      end
      urls[:invalid].each do |url| 
        requestlog.url = url
        expect(requestlog).to be_invalid
      end
    end

    it ":created_on" do
      dates[:valid].each do |date| 
        requestlog.created_on = date
        expect(requestlog).to be_valid
      end
      dates[:invalid].each do |date| 
        requestlog.created_on = date
        expect(requestlog).to be_invalid
      end
    end

  end

  context "has filled" do

    it ":parameters" do
      requestlog.parameters = ''
      expect(requestlog).to be_invalid
    end

    it ":controller" do
      requestlog.controller = ''
      expect(requestlog).to be_invalid
    end

    it ":action" do
      requestlog.action = ''
      expect(requestlog).to be_invalid
    end

    it ":host" do
      requestlog.host = ''
      expect(requestlog).to be_invalid
    end

  end

  it "has :user_id == 2" do
    requestlog.user_id = 0
    expect(requestlog).to be_invalid
    requestlog.user_id = 2
    expect(requestlog).to be_valid
  end

end