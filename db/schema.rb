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

ActiveRecord::Schema.define(version: 20150603065937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.string   "street_address"
    t.string   "suburb"
    t.string   "state"
    t.integer  "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties_tenants", id: false, force: :cascade do |t|
    t.integer "property_id"
    t.integer "tenant_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "rating"
    t.integer  "tenant_id"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "time_lived"
    t.text     "building_condition"
    t.text     "kitchen_condition"
    t.text     "bathroom_condition"
    t.text     "bedroom_condition"
    t.text     "area_crime"
    t.text     "area_proximity"
    t.text     "property_management"
    t.text     "overall_comment"
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
