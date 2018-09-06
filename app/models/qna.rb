class Qna < ActiveRecord::Base
  belongs_to :user
  has_many :qnareplies, dependent: :destroy

end
