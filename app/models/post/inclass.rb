class Inclass < Post
  resourcify
  belongs_to :user
  has_many :comment
  mount_uploader :file, ImageUploader
end
