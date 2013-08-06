class Admin::PostsController < ApplicationController
  
  layout "show"
  
  before_filter :authorize
  
  # GET /admin/posts
  # GET /admin/posts.json
  def index
    @admin_posts = Admin::Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_posts }
    end
  end

  # GET /admin/posts/1
  # GET /admin/posts/1.json
  def show
    @admin_post = Admin::Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_post }
    end
  end

  # GET /admin/posts/new
  # GET /admin/posts/new.json
  def new
    @admin_post = Admin::Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_post }
    end
  end

  # GET /admin/posts/1/edit
  def edit
    @admin_post = Admin::Post.find(params[:id])
  end

  # POST /admin/posts
  # POST /admin/posts.json
  def create
    @admin_post = Admin::Post.new(params[:admin_post])

    respond_to do |format|
      if @admin_post.save
        format.html { redirect_to @admin_post, notice: 'Post was successfully created.' }
        format.json { render json: @admin_post, status: :created, location: @admin_post }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/posts/1
  # PUT /admin/posts/1.json
  def update
    @admin_post = Admin::Post.find(params[:id])

    respond_to do |format|
      if @admin_post.update_attributes(params[:admin_post])
        format.html { redirect_to @admin_post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/posts/1
  # DELETE /admin/posts/1.json
  def destroy
    @admin_post = Admin::Post.find(params[:id])
    @admin_post.destroy

    respond_to do |format|
      format.html { redirect_to admin_posts_url }
      format.json { head :no_content }
    end
  end

  protected

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, :notice => "Prihlaste se prosim"
      end
    end

end
