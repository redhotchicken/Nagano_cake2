class Item < ApplicationRecord

  belongs_to :genre
  has_many:cart_items, dependent: :destroy
  has_many :order_items, dependent: :destroy
  has_one_attached :image

  validates :genre_id, presence:true
  validates :name, presence:true
  validates :description, presence:true
  validates :price, presence:true
  #validates :is_active, presence:true

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpeg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type:'image/jpeg')
    end
      image.variant(resize_to_fit:[width, height]).processed
  end

  def tax_price
      (price*1.1).floor
  end

end
