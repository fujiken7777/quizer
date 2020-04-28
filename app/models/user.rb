class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :quizzes
  mount_uploader :user_image, ImageUploader
  has_many :likes, dependent: :destroy
  has_many :like_stories, through: :likes, source: :quiz
end
