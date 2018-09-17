class PostsController < ApplicationController
  
  before_action :set_post, only: [:edit, :update, :destroy]

  def edit
  end

  def new
    @post = Post.new
    params[:type].capitalize
  end

  def update
    @post = Post.find(params[:id])
  end
  
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end
  
  def destroy
    @post.destroy
    redirect_to root_path
  end
  
  private
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:user_id, :title, :content, :type)
  end
  
end
