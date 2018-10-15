class Tip < Post
  resourcify
  belongs_to :user
  has_many :comment
end
