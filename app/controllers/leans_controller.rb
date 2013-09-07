
class LeansController < ApplicationController

  include JsonHelper

  def show

  	@lean = Lean.first(:conditions => { :id => params[:id].to_i })

    if @lean.nil?
      respond_to do |format|
        format.html { render :file    => "#{Rails.root}/public/404", 
                             :status  => 404}
        format.json { render :json => {} }
      end
    else
      @lean = @lean.decorate
      respond_to do |format|
  		  format.html { render 'leans/show'}
  		  format.json { render :json => @lean.json_result }
      end
    end

  end

end
