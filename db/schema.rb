# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_21_112949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "zone", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plant_lists", force: :cascade do |t|
    t.bigint "plant_id", null: false
    t.bigint "list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_plant_lists_on_list_id"
    t.index ["plant_id"], name: "index_plant_lists_on_plant_id"
  end

  create_table "plant_locations", force: :cascade do |t|
    t.bigint "plant_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_plant_locations_on_location_id"
    t.index ["plant_id"], name: "index_plant_locations_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "scientific_name"
    t.string "family"
    t.string "image_url"
    t.string "plant_type"
    t.string "maturity_size"
    t.string "sun_exposure"
    t.string "soil_type"
    t.string "soil_ph"
    t.string "bloom_time"
    t.string "hardiness_zone"
    t.string "native_area"
    t.text "care"
    t.text "light"
    t.text "soil"
    t.text "water"
    t.text "fertilizer"
    t.boolean "pot"
    t.boolean "open_soil"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.text "temperature_humidity"
    t.integer "zone", default: [], array: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.string "user_location"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lists", "users"
  add_foreign_key "plant_lists", "lists"
  add_foreign_key "plant_lists", "plants"
  add_foreign_key "plant_locations", "locations"
  add_foreign_key "plant_locations", "plants"
end
