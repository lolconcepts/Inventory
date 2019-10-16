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

ActiveRecord::Schema.define(version: 2019_10_15_120042) do

  create_table "items", force: :cascade do |t|
    t.integer "vendor_id"
    t.string "model"
    t.date "eol"
    t.date "eos"
    t.float "cost_per_year"
    t.string "serial_number"
    t.integer "location_id"
    t.text "notes"
    t.date "onboard"
    t.date "decom"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_items_on_location_id"
    t.index ["status_id"], name: "index_items_on_status_id"
    t.index ["vendor_id"], name: "index_items_on_vendor_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
