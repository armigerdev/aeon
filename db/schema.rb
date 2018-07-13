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

ActiveRecord::Schema.define(version: 20180304041402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lead_drops", force: :cascade do |t|
    t.string "da"
    t.date "create_date"
    t.string "existing_ipdsl"
    t.string "max_speed"
    t.string "contact_name"
    t.string "street_line_1"
    t.string "unit_number"
    t.string "living_unit_id"
    t.string "lead_record_type"
    t.string "dsl_service_type"
    t.string "wireless_customer"
    t.string "existing_hsia"
    t.string "existing_voip"
    t.string "disposition"
    t.string "wire_center"
    t.string "house_nbr"
    t.string "street_name"
    t.string "street_direction"
    t.string "suffix_type_code"
    t.string "city"
    t.string "state_province"
    t.string "zip_postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

end
