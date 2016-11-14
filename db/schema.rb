# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161109205512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "quantity"
    t.integer  "units"
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["user_id"], name: "index_drinks_on_user_id", using: :btree
  end

  create_table "user_drinks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "drink_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drink_id"], name: "index_user_drinks_on_drink_id", using: :btree
    t.index ["user_id"], name: "index_user_drinks_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "drinks", "users"
  add_foreign_key "user_drinks", "drinks"
  add_foreign_key "user_drinks", "users"
end
