class ShowController < ApplicationController
  layout "show"
  
  def index
    
    @categories = Category.order('"order"').all
    
    @posts = Post.order('"order"').all
    
    @news = New.order('created_at ASC').limit(3).all
    
  end
  
  def show

    @post = Post.find(params[:id])

#    @news = New.order('created_at ASC').limit(3).all
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
                        

  end
  
end
