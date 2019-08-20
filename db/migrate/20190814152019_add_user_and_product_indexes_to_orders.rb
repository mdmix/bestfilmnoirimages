class AddUserAndProductIndexesToOrders < ActiveRecord::Migration[5.2]
  def change
    add_index :orders, [:product_id, :user_id]
  end
end
