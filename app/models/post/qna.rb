class Qna < Post
  belongs_to :user
  has_many :qnareplies, dependent: :destroy
  has_many :comment

end