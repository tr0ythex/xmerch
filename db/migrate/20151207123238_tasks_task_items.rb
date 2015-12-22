class TasksTaskItems < ActiveRecord::Migration
  def change
    create_join_table :tasks, :task_items do |t|
      t.index :task_id
      t.index :task_item_id
    end
  end
end