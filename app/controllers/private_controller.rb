class PrivateController < ApplicationController
  def index
    @inclasses = Inclass.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
    @qnas = Qna.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
    @notices = Notice.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
    @tips = Tip.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
  end
end
