class CreateTiendas < ActiveRecord::Migration[6.0]
  def change
    create_table :tiendas do |t|
      t.string :codename
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
