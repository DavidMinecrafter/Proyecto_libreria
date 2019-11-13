class AddIndexToTiendasCodename < ActiveRecord::Migration[6.0]
  def change
    add_index :tiendas, :codename, unique: true
  end
end
