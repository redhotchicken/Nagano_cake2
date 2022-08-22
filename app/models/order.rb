class Order < ApplicationRecord

enum payment_type: { credit_card: 0, transfer: 1 }
enum address: { customer_address: 0, registered_address: 1, new_address: 2 }
  


end
