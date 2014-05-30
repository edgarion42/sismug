class CreateGestions < ActiveRecord::Migration
  def change
    create_table :gestions do |t|
      t.string :fecha_gestion
      t.text :descripcion
      t.integer :gestor_id
      t.integer :persona_id

      t.timestamps
    end
    add_index :gestions, [:persona_id, :created_at]
    add_index :gestions, [:gestor_id]

  end
end
