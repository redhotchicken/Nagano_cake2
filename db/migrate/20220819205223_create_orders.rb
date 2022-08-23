class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :payment
      t.integer :postage
      t.integer :payment_type
      t.integer :status
      t.string :name
      t.string :post_code
      t.string :address

      t.timestamps
    end
  end
end
