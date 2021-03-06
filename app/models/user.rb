class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :notices
  has_many :qnas
  has_many :inclasses
  has_many :tips
  has_many :posts
  has_many :comments
end
