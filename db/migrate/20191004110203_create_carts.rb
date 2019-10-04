class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :cart_id
    end
    add_index :carts, :cart_id
  end
end
