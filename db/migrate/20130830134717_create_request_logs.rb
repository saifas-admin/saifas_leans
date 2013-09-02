class CreateRequestLogs < ActiveRecord::Migration

  def change
    create_table :request_logs do |column|
    	  column.integer  :user_id,    :null => false
      	column.string   :url,        :null => false
      	column.string   :remote_ip,  :null => false
      	column.string   :format,     :null => false
      	column.string   :method,     :null => false
      	column.string   :protocol,   :null => false
      	column.string   :host,       :null => false
      	column.string   :port,       :null => false
      	column.string   :parameters
      	column.string   :controller
      	column.string   :action
      	column.string   :user_agent
      	column.string   :platform
      	column.string   :browser
      	column.string   :version
      	column.datetime :created_on, :null => false 
      	column.timestamps
    end
  end
  
end
