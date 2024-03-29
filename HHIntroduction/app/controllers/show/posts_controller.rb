class Show::PostsController < ApplicationController

  layout "show"
   
  # GET /posts
  # GET /posts.json
  def index
  
    @categories = Category.order('"order"').all
    
    @news = New.order('created_at ASC').limit(3).all

    @posts = Post.where(:category_id => params[:category_id])
        
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end


end
