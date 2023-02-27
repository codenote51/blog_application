# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_21_060710) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "status", limit: 15
    t.text "body"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.string "city"
    t.string "pin", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.integer "#<ActiveRecord::ConnectionAdapters::SQLite3::TableDefinition:0x000055972a77c4c0>"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "status", limit: 15
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
