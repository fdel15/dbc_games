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

ActiveRecord::Schema.define(version: 20150528195906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_types", force: :cascade do |t|
    t.string   "name",             null: false
    t.integer  "min_num_players",  null: false
    t.string   "how_to_play_link", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "game_types", ["name"], name: "index_game_types_on_name", unique: true, using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "name",         null: false
    t.integer  "game_type_id", null: false
    t.integer  "location_id",  null: false
    t.string   "description"
    t.datetime "date",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "geo_coordinates"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "locations", ["address"], name: "index_locations_on_address", unique: true, using: :btree

end
