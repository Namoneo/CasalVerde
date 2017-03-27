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

ActiveRecord::Schema.define(version: 20170203142321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "number_of_nights"
    t.integer  "number_of_guests"
    t.integer  "salutation"
    t.string   "first_name"
    t.string   "insertion"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "country"
    t.string   "street"
    t.integer  "house_number"
    t.string   "zip_code"
    t.string   "city"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "origin",           default: 0
    t.boolean  "confirmed",        default: false
  end

  create_table "contents", force: :cascade do |t|
    t.text     "paragraph"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "guestbooks", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "published",  default: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tag"
    t.integer  "number"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "email"
    t.text     "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "seasons", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "nightly_cost"
    t.integer  "min_stay"
    t.decimal  "extra_person_night"
    t.decimal  "deposit"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "changeover"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
