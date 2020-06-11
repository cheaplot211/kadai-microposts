class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favorited_from, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
