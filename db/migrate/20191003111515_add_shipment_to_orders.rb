class AddShipmentToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :shipment, :integer
  end
end
