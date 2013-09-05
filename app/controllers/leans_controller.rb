
class LeansController < ApplicationController

  include JsonHelper

  def show

  	@lean = Lean.first(:conditions => { :id => params[:id].to_i })

  	respond_to do |format|
  		format.html {render :nothing => true}
  		format.json {render :json => lean_to_json(@lean)}
  	end

  end

end
