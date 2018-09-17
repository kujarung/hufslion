class Notice < Post
  belongs_to :user
  has_many :comment
end
