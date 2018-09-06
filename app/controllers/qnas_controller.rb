class QnasController < ApplicationController
  
  before_action :set_qna, only: [:show, :edit, :update, :destroy]
  def index
    @qnas = Qna.paginate(:page => params[:page], :per_page => 10)
  end
  
  def show
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
