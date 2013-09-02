ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_base_class_for_anonymous_controllers = false

  config.global_fixtures = :all

end

class BeSame

  def initialize(expected)
    @expected = expected
  end

  def matches?(target)
    @target = target
    result = true 
    @expected.each_key do |key|
      if @target[key] == @expected[key]
        result = true 
      else
        result = false
        break 
      end
    end
    return result
  end

  def failure_message
    "Values in expected are not same to values in target"
  end

  def negative_failture_message
  end

end

def be_same(expected)
  BeSame.new(expected)
end
