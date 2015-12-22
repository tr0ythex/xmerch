class RenameAuthenticationTokenInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :authentication_token, :auth_token
    change_column :users, :auth_token, :string, :null => false
  end
end