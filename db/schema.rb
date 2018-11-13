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

ActiveRecord::Schema.define(version: 2018_11_13_030159) do

  create_table "channels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hosts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "headline"
    t.text "description"
    t.string "photo_url"
    t.integer "external_id"
    t.integer "accommodates"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "beds"
    t.float "lat"
    t.float "lng"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "host_id"
    t.index ["accommodates"], name: "index_listings_on_accommodates"
    t.index ["bedrooms"], name: "index_listings_on_bedrooms"
    t.index ["external_id"], name: "index_listings_on_external_id"
    t.index ["host_id"], name: "index_listings_on_host_id"
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "listing_id"
    t.date "arrival"
    t.date "departure"
    t.string "guest_name"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "channel_id"
    t.index ["listing_id"], name: "index_reservations_on_listing_id"
  end

  add_foreign_key "listings", "hosts"
  add_foreign_key "reservations", "listings"
end
