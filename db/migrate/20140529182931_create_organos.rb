class CreateOrganos < ActiveRecord::Migration
  def change
    create_table :organos do |t|
      t.string :onombre
      t.string :odireccion
      t.string :otelefono

      t.timestamps
    end
  end
end
