class Quiz < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :genre, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader
  acts_as_taggable
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  validates :text,
            :name,
            :image,
            :choice1,
            :choice2,
            :choice3,
            :choice4,
            :answer_number,
            :genre,
            presence: true

  def self.search(search)
    return Quiz.all unless search
    Quiz.where('name LIKE(?)', "%#{search}%")
  end
end
