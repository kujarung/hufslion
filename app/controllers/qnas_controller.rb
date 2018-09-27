class QnasController < ApplicationController
  
  before_action :set_qna, only: [:show, :edit, :update, :destroy]
   load_and_authorize_resource
  def index
    @qnas = Qna.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @qna = Qna.new
  end

  def create
    @qna = Qna.new(qna_params)
    @qna.save
    redirect_to qnas_path
  end
  
  def edit
  end
  
  def update
    @qna.update(qna_params)
    redirect_to qnas_path
  end
  
  def destroy
    @qna.destroy
    redirect_to qnas_path
  end
  
  private 
  def set_qna
    @qna = Qna.find(params[:id])
  end
  
  def qna_params 
    params.require(:qna).permit(:user_id, :title, :content)
  end
end
