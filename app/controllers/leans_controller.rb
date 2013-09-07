
class LeansController < ApplicationController

  include JsonHelper

  def show

  	@lean = Lean.first(:conditions => 
                          { :id => params[:id].to_i }
                      ).decorate

  	respond_to do |format|
  		format.html {render :nothing => true}
  		format.json {render :json => @lean.json_result}
  	end

  end

end
