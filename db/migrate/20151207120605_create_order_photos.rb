class CreateOrderPhotos < ActiveRecord::Migration
  def change
    create_table :order_photos do |t|
      t.binary :file
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end