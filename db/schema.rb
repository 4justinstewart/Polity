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

ActiveRecord::Schema.define(version: 20140614130606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aldermen", force: true do |t|
    t.integer  "ward_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "party_affiliation"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aldermen", ["user_id"], name: "index_aldermen_on_user_id", using: :btree
  add_index "aldermen", ["ward_id"], name: "index_aldermen_on_ward_id", using: :btree

  create_table "community_supports", force: true do |t|
    t.integer  "user_id"
    t.integer  "legislation_id"
    t.boolean  "support"
    t.text     "feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "community_supports", ["legislation_id"], name: "index_community_supports_on_legislation_id", using: :btree
  add_index "community_supports", ["user_id"], name: "index_community_supports_on_user_id", using: :btree

  create_table "legislation_sponsors", force: true do |t|
    t.integer  "legislator_id"
    t.integer  "legislation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legislations", force: true do |t|
    t.string   "city_identifier"
    t.string   "status"
    t.string   "type"
    t.date     "opened_date"
    t.date     "closed_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legislator_votes", force: true do |t|
    t.integer  "legislator_id"
    t.integer  "legislation_id"
    t.string   "vote"
    t.date     "vote_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "legislator_votes", ["legislation_id"], name: "index_legislator_votes_on_legislation_id", using: :btree
  add_index "legislator_votes", ["legislator_id"], name: "index_legislator_votes_on_legislator_id", using: :btree

  create_table "legislators", force: true do |t|
    t.integer  "ward_id"
    t.integer  "user_id"
    t.date     "term_start"
    t.date     "term_end"
    t.string   "party_affiliation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "legislators", ["user_id"], name: "index_legislators_on_user_id", using: :btree
  add_index "legislators", ["ward_id"], name: "index_legislators_on_ward_id", using: :btree

  create_table "user_addresses", force: true do |t|
    t.integer  "ward_id"
    t.integer  "user_id"
    t.string   "address_street1"
    t.string   "address_street2"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_addresses", ["user_id"], name: "index_user_addresses_on_user_id", using: :btree
  add_index "user_addresses", ["ward_id"], name: "index_user_addresses_on_ward_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wards", force: true do |t|
    t.integer  "ward_number"
    t.string   "address1"
    t.string   "address2"
    t.string   "zip"
    t.integer  "alderman_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
