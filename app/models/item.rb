class Item < ApplicationRecord
  belongs_to :genre
  
  has_one_attached :image
  
  validates :genre_id, presence:true
  validates :name, presence:true
  validates :description, presence:true
  validates :price, presence:true
  validates :is_active, presence:true
  
end
