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

ActiveRecord::Schema.define(version: 20150530233952) do

  create_table "archives", force: :cascade do |t|
    t.integer  "id_appointments", limit: 4
    t.integer  "state",           limit: 4
    t.date     "date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name_category", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "content_clinics", force: :cascade do |t|
    t.string   "name_clinic",     limit: 255
    t.string   "adress_clinic",   limit: 255
    t.string   "zip_code_clinic", limit: 255
    t.string   "city_linic",      limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "pwz_number", limit: 255
    t.string   "name",       limit: 255
    t.string   "surname",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "installs", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "installs", ["email"], name: "index_installs_on_email", unique: true, using: :btree
  add_index "installs", ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true, using: :btree

  create_table "insurers", force: :cascade do |t|
    t.string   "name_insurer",     limit: 255
    t.string   "adress",           limit: 255
    t.string   "zip_code_insurer", limit: 255
    t.string   "city_insurer",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "models", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "pesel",             limit: 4
    t.string   "name_patient",      limit: 255
    t.string   "firstname_patient", limit: 255
    t.string   "adress",            limit: 255
    t.string   "city_patient",      limit: 255
    t.string   "zip_code_patient",  limit: 255
    t.string   "phone_patient",     limit: 255
    t.integer  "patient_card_nr",   limit: 4
    t.string   "ICD10code",         limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "insurer_id",        limit: 4
  end

  add_index "patients", ["insurer_id"], name: "my_foreign_key", using: :btree

  create_table "positions", force: :cascade do |t|
    t.string   "position",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name_services", limit: 255
    t.string   "company_price", limit: 255
    t.string   "doctor_price",  limit: 255
    t.date     "date_in"
    t.date     "date_out"
    t.integer  "category_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "services", ["category_id"], name: "fk_rails_5a36fd9326", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "patients", "insurers", name: "my_foreign_key"
  add_foreign_key "services", "categories"
end
