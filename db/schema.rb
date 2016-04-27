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

ActiveRecord::Schema.define(version: 20160427004057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hikes", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.integer  "step_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "resources", ["step_id"], name: "index_resources_on_step_id", using: :btree

  create_table "steps", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "trail_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "steps", ["trail_id"], name: "index_steps_on_trail_id", using: :btree

  create_table "trails", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.integer  "hike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "trails", ["hike_id"], name: "index_trails_on_hike_id", using: :btree

  add_foreign_key "resources", "steps"
  add_foreign_key "steps", "trails"
  add_foreign_key "trails", "hikes"
end
