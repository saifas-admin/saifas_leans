class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :request_log

  def request_log

    user_agent  = request.user_agent
    parameters  = request.params
    agent       = UserAgent.parse(user_agent)
    if user_agent.match('LeanBrowser')
      platform  = parameters[:platform]
      browser   = parameters[:browser] || 'LeanBrowser'
      version   = parameters[:version]
    else
      platform  = agent.platform
      browser   = agent.browser
      version   = agent.version.to_s
    end

    RequestLogs.create( :user_id    => '2',
                        :url        => request.url,
                        :remote_ip  => request.remote_ip,
                        :format     => request.format.to_s,
                        :method     => request.method,
                        :protocol   => request.protocol,
                        :host       => request.host,
                        :port       => request.port,
                        :parameters => parameters,
                        :controller => parameters[:controller],
                        :action     => parameters[:action],
                        :user_agent => user_agent,
                        :platform   => platform,
                        :browser    => browser,
                        :version    => version,
                        :created_on => Time.now.strftime('%Y-%m-%d %H:%M'))

  end

end
