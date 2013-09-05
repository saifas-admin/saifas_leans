class RequestLogs < ActiveRecord::Base

	attr_accessible :user_id, :url, :remote_ip, :format, 
				  	:method, :protocol, :host, :port, :parameters, 
				  	:controller, :action, :user_agent, :platform, 
				  	:browser, :version, :created_on

	validates_numericality_of :user_id, :equal_to => 2

	validates :parameters, :controller, :action, :host, :presence => true

	validates_format_of :remote_ip, :with => Resolv::IPv4::Regex

	validates_inclusion_of :method, :in => ['OPTIONS', 'GET', 'POST', 
											'HEAD', 'PUT', 'DELETE', 
											      'TRACE', 'CONNECT']

	validates_format_of :format, :with => /^\w+\/[\w|\-|\.]+/i

	validates_format_of :url, :with => /(\w+\:\/\/[\w|\d|\-|\.]+)(\:\d+)?([\w|\d|\.|\/|\&|\?|\=]+)?/i

	validates_format_of :protocol, :with => /\w+:\/\//i

	validates :port, :format => {:with => /\d+/i}, 
						:length => {:minimum => 1, :maximum => 5}

	validates_format_of :created_on, :with => /\d\d\d\d-\d\d\-\d\d\s\d\d\:\d\d\:\d\d/i

end
