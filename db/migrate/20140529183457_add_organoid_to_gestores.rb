class AddOrganoidToGestores < ActiveRecord::Migration
  def change
  	add_reference :gestors, :organo
  end
end
