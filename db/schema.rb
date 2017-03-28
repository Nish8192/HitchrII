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

ActiveRecord::Schema.define(version: 20170328151431) do

  create_table "cars", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.string   "trim"
    t.string   "style"
    t.string   "VIN"
    t.integer  "seats"
    t.integer  "mileage"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_cars_on_owner_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "driver_id"
    t.integer  "passengers_id"
    t.float    "depLat"
    t.float    "depLong"
    t.float    "arrLat"
    t.float    "arrLong"
    t.datetime "depDate"
    t.time     "duration"
    t.datetime "expectedArr"
    t.float    "price"
    t.integer  "car_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["car_id"], name: "index_trips_on_car_id"
    t.index ["driver_id"], name: "index_trips_on_driver_id"
    t.index ["passengers_id"], name: "index_trips_on_passengers_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "password_digest"
    t.float    "lat"
    t.float    "long"
    t.string   "phone"
    t.date     "bday"
    t.string   "gender"
    t.integer  "cars_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["cars_id"], name: "index_users_on_cars_id"
  end

end
