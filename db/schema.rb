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

ActiveRecord::Schema.define(version: 20170328191339) do

  create_table "cars", force: :cascade do |t|
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
    t.integer  "user_id"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "trip_infos", force: :cascade do |t|
    t.string   "dStreet"
    t.string   "dCity"
    t.string   "dState"
    t.integer  "dZip"
    t.string   "aStreet"
    t.string   "aCity"
    t.string   "aState"
    t.integer  "aZip"
    t.datetime "dDate"
    t.datetime "aDate"
    t.time     "duration"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "driver"
    t.integer  "passengers"
    t.integer  "trip_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zipCode"
    t.string   "phone"
    t.date     "bday"
    t.string   "gender"
    t.integer  "cars_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["cars_id"], name: "index_users_on_cars_id"
  end

end
