class RemoveUserIndexFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_index :orders, [:user_id]
  end
end
