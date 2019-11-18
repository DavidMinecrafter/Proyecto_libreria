# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_18_060515) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.integer "quantity"
    t.integer "tienda_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_quantities_on_book_id"
    t.index ["tienda_id", "book_id"], name: "index_quantities_on_tienda_id_and_book_id"
    t.index ["tienda_id"], name: "index_quantities_on_tienda_id"
  end

  create_table "tiendas", force: :cascade do |t|
    t.string "codename"
    t.text "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["codename"], name: "index_tiendas_on_codename", unique: true
  end

  add_foreign_key "quantities", "books"
  add_foreign_key "quantities", "tiendas"
end
