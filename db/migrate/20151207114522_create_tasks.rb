class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :required
      t.integer :reward
      t.boolean :complete
      t.boolean :photo_required
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
