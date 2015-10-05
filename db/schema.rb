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

ActiveRecord::Schema.define(version: 20151004235647) do

  create_table "agencies", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.text     "target"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functionaries", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "photo"
    t.integer  "agency_id"
    t.string   "charge"
    t.string   "salary"
    t.text     "schooling"
    t.text     "experience"
    t.decimal  "evaluation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "functionaries", ["agency_id"], name: "index_functionaries_on_agency_id"

end
