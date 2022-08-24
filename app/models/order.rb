class Order < ApplicationRecord
has_many :cart_items, dependent: :destroy
belongs_to :customer
has_many :order_items

enum payment_type: { credit_card: 0, transfer: 1 }

# 小計を求めるメソッド
#消費税を求めるメソッドwith_tax_priceと掛け合わせる
#商品の税込み価格*個数
def subtotal
    item.with_tax_price * amount
end


end
