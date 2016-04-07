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

ActiveRecord::Schema.define(version: 20160406222223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.string   "allergen"
    t.text     "reaction"
    t.integer  "health_history_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "allergies", ["health_history_id"], name: "index_allergies_on_health_history_id", using: :btree

  create_table "complaints", force: :cascade do |t|
    t.string   "symptom"
    t.date     "date_started"
    t.text     "alleviated_by"
    t.text     "aggravated_by"
    t.text     "diagnosis"
    t.text     "inhibited_activity"
    t.text     "treatment"
    t.integer  "health_history_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "complaints", ["health_history_id"], name: "index_complaints_on_health_history_id", using: :btree

  create_table "family_disease_histories", force: :cascade do |t|
    t.text     "heart_disease"
    t.text     "cancer"
    t.text     "diabetes"
    t.text     "hypertension"
    t.text     "thyroid_disorder"
    t.text     "hepatitis"
    t.text     "asthma_allergies"
    t.text     "seizures"
    t.text     "stroke"
    t.text     "neurological_disorders"
    t.text     "substance_abuse"
    t.text     "other"
    t.integer  "health_history_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "family_disease_histories", ["health_history_id"], name: "index_family_disease_histories_on_health_history_id", using: :btree

  create_table "health_histories", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "gender"
    t.date     "date_of_birth"
    t.integer  "height"
    t.integer  "weight"
    t.string   "address"
    t.string   "home_phone"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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
    t.integer  "caffeine_cups"
    t.string   "alcohol_type"
    t.integer  "drinks_per_week"
    t.string   "smoking_substance"
    t.integer  "years_smoker"
    t.string   "year_quit"
    t.string   "alcohol_consumption"
    t.string   "alcohol_abuse"
    t.string   "smoking_habit"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "drink_coffee"
    t.string   "drink_tea"
    t.string   "drink_cola"
    t.string   "drink_other_caffeine"
    t.integer  "user_id"
  end

  add_index "health_histories", ["user_id"], name: "index_health_histories_on_user_id", using: :btree

  create_table "hospitalizations", force: :cascade do |t|
    t.text     "hospitalization_reason"
    t.string   "year"
    t.integer  "health_history_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "hospitalizations", ["health_history_id"], name: "index_hospitalizations_on_health_history_id", using: :btree

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.string   "strength"
    t.string   "frequency"
    t.integer  "health_history_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "medications", ["health_history_id"], name: "index_medications_on_health_history_id", using: :btree

  create_table "personal_disease_histories", force: :cascade do |t|
    t.text     "heart_disease"
    t.text     "cancer"
    t.text     "diabetes"
    t.text     "hypertension"
    t.text     "thyroid_disorder"
    t.text     "hepatitis"
    t.text     "asthma_allergies"
    t.text     "seizures"
    t.text     "stroke"
    t.text     "neurological_disorders"
    t.text     "substance_abuse"
    t.text     "other"
    t.integer  "health_history_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "personal_disease_histories", ["health_history_id"], name: "index_personal_disease_histories_on_health_history_id", using: :btree

  create_table "surgeries", force: :cascade do |t|
    t.string   "surgical_procedure"
    t.string   "year"
    t.integer  "health_history_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "surgeries", ["health_history_id"], name: "index_surgeries_on_health_history_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "allergies", "health_histories", on_delete: :cascade
  add_foreign_key "allergies", "health_histories", on_delete: :cascade
  add_foreign_key "complaints", "health_histories", on_delete: :cascade
  add_foreign_key "complaints", "health_histories", on_delete: :cascade
  add_foreign_key "family_disease_histories", "health_histories", on_delete: :cascade
  add_foreign_key "family_disease_histories", "health_histories", on_delete: :cascade
  add_foreign_key "health_histories", "users"
  add_foreign_key "hospitalizations", "health_histories", on_delete: :cascade
  add_foreign_key "hospitalizations", "health_histories", on_delete: :cascade
  add_foreign_key "medications", "health_histories", on_delete: :cascade
  add_foreign_key "medications", "health_histories", on_delete: :cascade
  add_foreign_key "personal_disease_histories", "health_histories", on_delete: :cascade
  add_foreign_key "personal_disease_histories", "health_histories", on_delete: :cascade
  add_foreign_key "surgeries", "health_histories", on_delete: :cascade
  add_foreign_key "surgeries", "health_histories", on_delete: :cascade
end
