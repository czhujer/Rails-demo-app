class Show::NewsController < ApplicationController

  layout "show"

  # GET /news
  # GET /news.json
  def show

    @categories = Category.order('"order"').all

    @news = New.order('created_at ASC').limit(3).all

    @news_main = New.order('created_at ASC').limit(3).all

    @news_main = New.where(:id => params[:id]).all

#    @posts = Post.where(:category_id => params[:category_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

end
