class CreateCheckedProducts < ActiveRecord::Migration
  def change
    create_table :checked_products do |t|
      t.integer :order_id
      t.integer :product_id
      t.boolean :checked

      t.timestamps null: false
    end
  end
end
