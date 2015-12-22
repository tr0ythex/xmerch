class CreateTaskItems < ActiveRecord::Migration
  def change
    create_table :task_items do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
