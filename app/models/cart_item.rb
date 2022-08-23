class CartItem < ApplicationRecord


  belongs_to:item
  belongs_to:customer

# 小計を求めるメソッド
#消費税を求めるメソッドwith_tax_priceと掛け合わせる
#商品の税込み価格*個数
def subtotal
    item.with_tax_price * amount
end


end
