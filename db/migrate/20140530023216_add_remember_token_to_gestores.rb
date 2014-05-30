class AddRememberTokenToGestores < ActiveRecord::Migration
  def change
  	add_column :gestors, :remember_token, :string
    add_index  :gestors, :remember_token
  end
end
