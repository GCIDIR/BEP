# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141105134705) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "code_iso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locomotives", force: true do |t|
    t.string   "name"
    t.string   "loco_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "offers", force: true do |t|
    t.string   "departure"
    t.string   "destination"
    t.float    "min_weight_accepted", limit: 24
    t.float    "max_weight_accepted", limit: 24
    t.float    "price",               limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "departure_country"
    t.string   "destination_country"
  end

  create_table "orders", force: true do |t|
    t.string   "departure"
    t.string   "destination"
    t.integer  "offer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "departure_country"
    t.string   "destination_country"
  end

  create_table "packets", force: true do |t|
    t.string   "title"
    t.float    "weight",     limit: 24
    t.float    "height",     limit: 24
    t.float    "width",      limit: 24
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_trackers", force: true do |t|
    t.integer  "user_id"
    t.string   "cookie_id"
    t.string   "user_email"
    t.string   "user_ip"
    t.string   "url_visited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "firstname"
    t.string   "tel1"
    t.string   "adress1"
    t.string   "adress2"
    t.string   "country"
    t.string   "city"
    t.integer  "marx"
    t.boolean  "is_confirmed?"
    t.boolean  "is_active?"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
