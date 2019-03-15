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

ActiveRecord::Schema.define(version: 20190313035147) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "zip_code",                    null: false
    t.string   "prefecture",                  null: false
    t.string   "city",                        null: false
    t.text     "address_line1", limit: 65535, null: false
    t.text     "address_line2", limit: 65535
    t.string   "phone_number",                null: false
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "category1s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "category1_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["category1_id"], name: "index_category2s_on_category1_id", using: :btree
  end

  create_table "category3s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "category2_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["category2_id"], name: "index_category3s_on_category2_id", using: :btree
  end

  create_table "credits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "token",      limit: 65535, null: false
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_credits_on_user_id", using: :btree
  end

  create_table "product_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.string   "product_image", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["product_id"], name: "index_product_images_on_product_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                              null: false
    t.text     "product_description", limit: 65535, null: false
    t.string   "category1",                         null: false
    t.string   "category2"
    t.string   "category3"
    t.string   "brand"
    t.string   "size"
    t.string   "condition",                         null: false
    t.string   "postage",                           null: false
    t.string   "shipping_method"
    t.string   "ship_from",                         null: false
    t.string   "shipping_date",                     null: false
    t.integer  "price",                             null: false
    t.integer  "point"
    t.string   "image"
    t.integer  "sales_condition",                   null: false
    t.integer  "user_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nickname",               default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name_kana",         default: "", null: false
    t.string   "first_name_kana",        default: "", null: false
    t.string   "date_of_birth",          default: "", null: false
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "category2s", "category1s"
  add_foreign_key "category3s", "category2s"
  add_foreign_key "credits", "users"
  add_foreign_key "product_images", "products"
  add_foreign_key "products", "users"
end
