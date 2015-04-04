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

ActiveRecord::Schema.define(version: 20150404013103) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",                                null: false
    t.integer  "section_id"
    t.boolean  "is_default_for_trip", default: false, null: false
    t.boolean  "is_mandatory",        default: false, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.datetime "deleted_at"
  end

  add_index "categories", ["section_id"], name: "index_categories_on_section_id"

  create_table "items", force: :cascade do |t|
    t.string   "name",                        null: false
    t.text     "description"
    t.float    "weight"
    t.string   "url"
    t.string   "cost"
    t.boolean  "is_owned",     default: true, null: false
    t.date     "purchased_on"
    t.text     "notes"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.datetime "deleted_at"
    t.integer  "category_id"
    t.integer  "location",     default: 0,    null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"

  create_table "sections", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
