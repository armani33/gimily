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

ActiveRecord::Schema.define(version: 2018_12_19_105259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "full_name"
    t.string "street"
    t.string "city"
    t.string "state_province_region"
    t.integer "zip_code"
    t.string "country"
    t.integer "phone_number"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "groupe_baskets", force: :cascade do |t|
    t.bigint "groupe_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["groupe_id"], name: "index_groupe_baskets_on_groupe_id"
    t.index ["item_id"], name: "index_groupe_baskets_on_item_id"
  end

  create_table "groupes", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_groupes_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "page_url"
    t.string "title"
    t.string "text_description"
    t.string "brand"
    t.integer "price"
    t.integer "shipping_amount"
    t.string "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "groupe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["groupe_id"], name: "index_members_on_groupe_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.string "uid"
    t.text "facebook_picture_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "groupe_baskets", "groupes"
  add_foreign_key "groupe_baskets", "items"
  add_foreign_key "groupes", "users"
  add_foreign_key "members", "groupes"
  add_foreign_key "members", "users"
end
