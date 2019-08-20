class RemoveProductIndexFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_index :orders, [:product_id]
  end
end
