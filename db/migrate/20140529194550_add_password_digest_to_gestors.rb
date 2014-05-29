class AddPasswordDigestToGestors < ActiveRecord::Migration
  def change
    add_column :gestors, :password_digest, :string
  end
end
