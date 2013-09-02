module RequestLogsSpecHelper

	def methods
	{
		:valid => ['OPTIONS', 'GET', 'POST', 'HEAD', 
					'PUT', 'DELETE', 'TRACE', 'CONNECT'],
		:invalid => ['', 'EXTERNAL', 'HTTP', '//', 
					  ':', '://', '.END', 'DISCONNECT']
	}
	end

	def ip_addresses
	{
		:valid => ['0.0.0.0', '132.168.0.9', '255.255.255.255'],
		:invalid => ['255.255.255.256', '999.999.999.999', 
					'.168.196.12', '0..192.1', '...', '...1', 
					'192168132167', 'www.google.com', '']
	}
	end

	def formats
	return {
		:valid => [	'application/ecmascript', 'application/json', 
					'application/javascript', 'audio/basic',
					'message/http', 'multipart/form-data'],
		:invalid => ['', '/', 'application', 'text/', '.', 'http', 
					'192168132167', 'www.google.com']
	}
	end

	def protocols
	{
		:valid => ['file://' 'ftp://', 'http://', 
					'https://', 'mailto://', 'tftp://'],
		:invalid => ['' '://', 'http', 'https ://', '.']
	}
	end

	def dates
	{
		:valid => ['2013-08-12 16:36:45', '2013-08-12 00:00:00'],
		:invalid => ['2013-0845 16:36', '2099-08-12:166']
	}
	end

	def urls
	{
		:valid => ['http://localhost:3000/leans?id=1',
					'http://0.0.0.0:3000/', 'http://google.com/'],
		:invalid => ['http:// localhost3000?/&leans?id=1',
					'://0.0.0.0:3000/', 'http:///']
	}
	end

	def ports
	{
		:valid => ['0', '65535', '8080', '80', '443'],
		:invalid => ['', '655360', '999999', 'text']
	}
	end

	def valid_log_hash
	{
    	:user_id 	=> 2,
    	:url 		=> 'http://0.0.0.0:3000/',
    	:remote_ip 	=> '127.0.0.1',
    	:format 	=> 'text/html',
    	:method 	=> 'GET',
    	:protocol 	=> 'http://',
    	:host 		=> '0.0.0.0',
    	:port 		=> '3000',
    	:parameters => '{"controller"=>"home", "action"=>"index"}',
    	:controller => 'home',
    	:action 	=> 'index',
    	:user_agent => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit',
    	:platform 	=> 'X11',
    	:browser 	=> 'Chrome',
    	:version 	=> '27.0.1453.110',
    	:created_on => Time.parse('2013-08-12 16:36:00').to_time.in_time_zone('UTC')
	}
	end

end
