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

ActiveRecord::Schema.define(version: 20160222020416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "gender"
    t.date     "date_of_birth"
    t.integer  "height"
    t.integer  "weight"
    t.string   "address"
    t.string   "home_phone"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "work_phone"
    t.string   "physician"
    t.string   "referred_by"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.string   "exercise_frequency"
    t.string   "exercise_type"
    t.text     "breakfast"
    t.text     "lunch"
    t.text     "dinner"
    t.text     "snack"
    t.string   "caffeine_type"
    t.integer  "caffeine_cups"
    t.boolean  "alcohol",                 default: false, null: false
    t.string   "alcohol_type"
    t.integer  "drinks_per_week"
    t.boolean  "alcohol_problem",         default: false, null: false
    t.boolean  "smoker",                  default: false, null: false
    t.string   "smoking_substance"
    t.integer  "years_smoker"
    t.date     "year_quit"
  end

  create_table "complaints", force: :cascade do |t|
    t.string   "symptom"
    t.date     "date_started"
    t.text     "alleviated_by"
    t.text     "aggravated_by"
    t.text     "diagnosis"
    t.text     "inhibited_activity"
    t.text     "treatment"
    t.integer  "client_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "complaints", ["client_id"], name: "index_complaints_on_client_id", using: :btree

  add_foreign_key "complaints", "clients"
end
