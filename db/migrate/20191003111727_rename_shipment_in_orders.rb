class RenameShipmentInOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :shipment, :shipment_id
  end
end
