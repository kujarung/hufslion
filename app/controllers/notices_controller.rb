class NoticesController < ApplicationController
  
  before_action :set_notice, only: [:show, :edit, :update, :destroy]
  def index
    @notices = Notice.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.save
    redirect_to notices_path
  end
  
  def edit
  end
  
  def update
    @notice.update(notice_params)
    redirect_to notices_path
  end
  
  def destroy
    @notice.destroy
    redirect_to notices_path
  end
  
  private 
  def set_notice
    @notice = Notice.find(params[:id])
  end
  
  def notice_params 
    params.require(:notice).permit(:user_id, :title, :content, :file)
  end
end

# class NoticesController < ApplicationController
  
#   before_action :set_notice, only: [:show, :edit, :update, :destroy]
#   def index
#     @notices = Notice.all
#   end
  
#   def show
#   end

#   def new
#     @notice = Notice.new
#   end

#   def create
#     @notice = Notice.new(notice_params)
#     @notice.save
#     redirect_to notices_path
#   end
  
#   def edit
#   end
  
#   def update
#     @notice.update(notice_params)
#     redirect_to notices_path
#   end
  
#   def destroy
#     @notice.destroy
#     redirect_to notices_path
#   end
  
#   private 
#   def set_notice
#     @notice = Notice.find(params[:id])
#   end
  
#   def notice_params 
#     params.require(:notice).permit(:user_id, :title, :content)
#   end
# end
