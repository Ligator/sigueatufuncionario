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

ActiveRecord::Schema.define(version: 20151015085014) do

  create_table "agencies", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.text     "target"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.integer  "ordering"
    t.text     "description"
    t.text     "programs"
  end

  create_table "evaluations", force: true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "functionary_id"
    t.integer  "evaluation",     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluations", ["functionary_id"], name: "index_evaluations_on_functionary_id"
  add_index "evaluations", ["question_id"], name: "index_evaluations_on_question_id"
  add_index "evaluations", ["user_id"], name: "index_evaluations_on_user_id"

  create_table "functionaries", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "photo"
    t.integer  "agency_id"
    t.string   "charge"
    t.text     "salary",         limit: 255
    t.text     "schooling"
    t.text     "experience"
    t.decimal  "evaluation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.string   "email"
    t.text     "functions"
    t.text     "office_address"
  end

  add_index "functionaries", ["agency_id"], name: "index_functionaries_on_agency_id"

  create_table "monthly_results", force: true do |t|
    t.date     "release"
    t.string   "functionay"
    t.string   "image"
    t.string   "agency"
    t.decimal  "evaluation"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "question"
    t.boolean  "agency_target"
    t.boolean  "agency_description"
    t.boolean  "agency_contact"
    t.boolean  "functionary_functions"
    t.boolean  "functionary_schooling"
    t.boolean  "functionary_experience"
    t.boolean  "functionary_salary"
    t.boolean  "functionary_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "agency_programs"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
