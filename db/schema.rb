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

ActiveRecord::Schema.define(version: 20140613074029) do

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

  create_table "community_member_vote_positions", force: true do |t|
    t.integer  "community_member_id"
    t.integer  "legislation_id"
    t.boolean  "agree"
    t.text     "feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legislation_sponsors", force: true do |t|
    t.integer  "legislator_id"
    t.integer  "legislation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legislations", force: true do |t|
    t.string   "status"
    t.string   "type"
    t.date     "opened_date"
    t.date     "closed_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legislator_votes", force: true do |t|
    t.date     "date_of_vote"
    t.integer  "legislator_id"
    t.integer  "legislation_id"
    t.string   "vote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "ward_id"
    t.string   "email"
    t.string   "address"
    t.string   "voter_registration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["ward_id"], name: "index_users_on_ward_id", using: :btree

  create_table "wards", force: true do |t|
    t.integer  "ward_number"
    t.date     "term_start"
    t.date     "term_end"
    t.integer  "legislator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
  end

  add_index "wards", ["legislator_id"], name: "index_wards_on_legislator_id", using: :btree

end
