class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.string :direccion
      t.string :fecha_nacimiento
      t.string :telefono
      t.string :curp

      t.timestamps
    end
  end
end
