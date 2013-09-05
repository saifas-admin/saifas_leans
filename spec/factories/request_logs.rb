FactoryGirl.define do
  factory :request_logs do 
      user_id       2
      url           'http://0.0.0.0:3000/'
      remote_ip     '127.0.0.1'
      format        'text/html'
      method        'GET'
      protocol      'http://'
      host          '0.0.0.0'
      port          '3000'
      parameters    '{"controller"=>"home", "action"=>"index"}'
      controller    'home'
      action        'index'
      user_agent    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit'
      platform      'X11'
      browser       'Chrome'
      version       '27.0.1453.110'
      created_on    Time.parse('2013-08-12 16:36:00').to_time.in_time_zone('UTC')
  end
end
