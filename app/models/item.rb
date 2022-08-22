class Item < ApplicationRecord

  has_many:cart_items, dependent: :destroy
  has_one_attached:item_image
  
   #消費税を求めるメソッド
  def with_tax_price
    (price*1.1).floor
  end

  def get_item_image
    (item_image.attached?) ? item_image : 'no_image.jpg'
  end
end
