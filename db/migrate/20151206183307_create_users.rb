class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :email
      t.string :sex
      t.float :balance
      t.boolean :withdraw_requested

      t.timestamps null: false
    end
  end
end