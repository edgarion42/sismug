class CreateGestors < ActiveRecord::Migration
  def change
    create_table :gestors do |t|
      t.string :gnombre1
      t.string :gnombre2
      t.string :gapellido1
      t.string :gapellido2
      t.string :gdireccion
      t.string :gtelefono

      t.timestamps
    end
  end
end
