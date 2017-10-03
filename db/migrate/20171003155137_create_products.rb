class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :short_description
      t.string :long_description
      t.boolean :in_store_item
      t.boolean :online_order_item
      t.integer :product_type
      t.boolean :active

      t.timestamps
    end
  end
end
