class Order < ApplicationRecord

belongs_to :customer
has_many :order_items

enum payment_type: { credit_card: 0, transfer: 1 }
enum status: { waiting_for_payment: 0, payment_confirmation: 1, production: 2, preparing_to_ship: 3, sent: 4}

# 小計を求めるメソッド
#消費税を求めるメソッドwith_tax_priceと掛け合わせる
#商品の税込み価格*個数
def subtotal
    item.with_tax_price * amount
end


end