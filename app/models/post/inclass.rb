class Inclass < Post
  belongs_to :user
  has_many :comment
  mount_uploader :file, ImageUploader
end
