# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_27_165754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chains", force: :cascade do |t|
    t.string "name"
    t.string "shortname"
    t.string "address"
    t.string "contact_person"
    t.string "contacts"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_accounts", force: :cascade do |t|
    t.integer "chain_id"
    t.string "customer_account_data"
    t.string "customer_account_scol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_of_chains", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "chain_id"
    t.boolean "isregistered"
    t.string "customer_of_chain_identity"
    t.string "customer_of_chain_data"
    t.binary "customer_card"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "deviceid"
    t.string "device_name"
    t.boolean "isregistered"
    t.string "email"
    t.string "tel"
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feedback_details", force: :cascade do |t|
    t.integer "feedback_id"
    t.integer "question_id"
    t.string "answer_type"
    t.string "answer"
    t.binary "answer_blob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "form_id"
    t.integer "point_id"
    t.integer "customer_id"
    t.string "deviceid"
    t.string "device_name"
    t.string "gps"
    t.string "qr"
    t.string "rating"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "isuniversal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "point_locations", force: :cascade do |t|
    t.integer "chain_id"
    t.string "name"
    t.string "code"
    t.string "address"
    t.string "gps"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "point_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "points", force: :cascade do |t|
    t.integer "chain_id"
    t.integer "point_location_id"
    t.integer "point_type_id"
    t.string "name"
    t.string "code"
    t.string "address"
    t.string "gps"
    t.string "qr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "form_id"
    t.integer "question_type_id"
    t.string "text"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
