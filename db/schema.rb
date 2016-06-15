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

ActiveRecord::Schema.define(version: 20160615214608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_spaces", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "art_id"
    t.integer  "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_art_spaces_on_art_id", using: :btree
    t.index ["space_id"], name: "index_art_spaces_on_space_id", using: :btree
  end

  create_table "arts", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "img_link"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.string   "img_link"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
