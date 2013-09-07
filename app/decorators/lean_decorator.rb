require 'json'

class LeanDecorator < Draper::Decorator
  
  delegate_all

  def json_result
    helpers.lean_to_json(model).to_json
  end
  
end
