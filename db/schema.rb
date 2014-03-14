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

ActiveRecord::Schema.define(version: 20140305045433) do

  create_table "bids", force: true do |t|
    t.integer  "user_id"
    t.integer  "internship_id"
    t.integer  "bid_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", force: true do |t|
    t.string   "firm_name"
    t.string   "firm_logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firmusers", force: true do |t|
    t.integer  "firm_id"
    t.string   "firmuser_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internships", force: true do |t|
    t.integer  "firm_id"
    t.text     "internship_description"
    t.string   "internship_title"
    t.string   "internship_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.text     "review_body"
    t.integer  "user_id"
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_firstname"
    t.string   "user_email"
    t.string   "user_lastname"
    t.string   "user_password"
    t.string   "user_profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
