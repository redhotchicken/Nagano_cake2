class Item < ApplicationRecord
  belongs_to:genre
  
  validates :genre_id, presence:true
  validates :name, presence:true
  validates :description, presence:true
  validates :price, presence:true
  
end
