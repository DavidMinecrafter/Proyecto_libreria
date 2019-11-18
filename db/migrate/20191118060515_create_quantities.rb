class CreateQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :quantities do |t|
      t.integer :quantity
      t.references :tienda, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
    add_index :quantities, [:tienda_id, :book_id]
  end
end
