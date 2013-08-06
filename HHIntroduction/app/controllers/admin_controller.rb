class AdminController < ApplicationController
  
  layout "show"
   
  before_filter :authorize
   
  def index
  
#     @categories = Category.order('"order"').all
     
  end

  protected
        
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, :notice => "Prihlaste se prosim"
      end
    end
    
end
