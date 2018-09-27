class InclassesController < ApplicationController

before_action :set_inclass, only: [:show, :edit, :update, :destroy]
 load_and_authorize_resource
  def index
    @inclasses = Inclass.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @inclass = Inclass.new
  end

  def create
    @inclass = Inclass.new(inclass_params)
    @inclass.save
    redirect_to inclasses_path
  end
  
  def edit
  end
  
  def update
    @inclass.update(inclass_params)
    redirect_to inclasses_path
  end
  
  def destroy
    @inclass.destroy
    redirect_to inclasses_path
  end
  
  private 
  def set_inclass
    @inclass = Inclass.find(params[:id])
  end
  
  def inclass_params 
    params.require(:inclass).permit(:user_id, :title, :content)
  end
end
