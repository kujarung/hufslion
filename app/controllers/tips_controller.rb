class TipsController < ApplicationController

 before_action :set_tip, only: [:show, :edit, :update, :destroy]
  def index
    @tips = Tip.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.save
    redirect_to tips_path
  end
  
  def edit
  end
  
  def update
    @tip.update(tip_params)
    redirect_to tips_path
  end
  
  def destroy
    @tip.destroy
    redirect_to tips_path
  end
  
  private 
  def set_tip
    @tip = Tip.find(params[:id])
  end
  
  def tip_params 
    params.require(:tip).permit(:user_id, :title, :content)
  end
end
