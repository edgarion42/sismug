class AddIndexToPersonasCurp < ActiveRecord::Migration
  def change
  	add_index :personas, :curp, unique: true
  end
end
