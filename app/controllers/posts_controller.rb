class PostsController < ApplicationController
  before_action :auth_user, only: [:new, :create, :edit, :update]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      flash[:notice] = "Article succesfully submitted"
      redirect_to article_headlines_path
    else
      flash[:alert] = "There was an error submitting the article"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(post_params)
    redirect_to root_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def index
    @posts = Post.all
  end

  private

    def post_params
      params.require(:post).permit(:title, :url, :description, :tags)
    end

    def auth_user
      unless user_signed_in?
        flash[:alert] = "Please sign in first."
        redirect_to new_user_session_path
      end
    end
end
