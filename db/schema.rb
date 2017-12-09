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

ActiveRecord::Schema.define(version: 20171208064118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acticles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_users", id: false, force: :cascade do |t|
    t.integer  "id",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.text     "email"
    t.text     "password"
    t.text     "name"
    t.text     "role"
    t.text     "confirm_token"
    t.boolean  "confirmed"
    t.text     "recover_token"
    t.datetime "recover_token_expiry"
  end

  create_table "broken_products", id: false, force: :cascade do |t|
    t.text "code"
    t.text "image_url"
    t.text "edit_url"
    t.text "reason"
  end

  create_table "cart_items", id: false, force: :cascade do |t|
    t.integer  "id",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "article_code", limit: 100
    t.integer  "cart_id",                  null: false
    t.integer  "quantity"
  end

  create_table "carts", id: false, force: :cascade do |t|
    t.integer  "id",                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "customer_id", limit: 100
    t.string   "session_id",  limit: 100
  end

  create_table "color_groups", id: false, force: :cascade do |t|
    t.integer  "id",                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.text     "name"
    t.string   "color",      limit: 20
    t.integer  "position"
  end

  create_table "delivery_hours", id: false, force: :cascade do |t|
    t.integer  "id",                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer  "delivery_hub_id"
    t.string   "name",            limit: 100
    t.string   "value",           limit: 10
  end

  create_table "media_containers", id: false, force: :cascade do |t|
    t.integer  "id",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.text     "name"
    t.text     "image"
    t.text     "link"
    t.text     "content"
  end

  create_table "product_categories", id: false, force: :cascade do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end

  create_table "product_features", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "feature_id", null: false
  end

  create_table "projects", id: false, force: :cascade do |t|
    t.text   "name",                              null: false
    t.string "db_type",               limit: 100
    t.string "db_connection_string",  limit: 255
    t.text   "product_loading_logic"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "salt"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
