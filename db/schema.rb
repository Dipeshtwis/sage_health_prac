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

ActiveRecord::Schema[7.1].define(version: 2024_02_04_161328) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "persons", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "suffix"
    t.string "preferred_name"
    t.date "dob"
    t.string "gender"
    t.string "ssn"
    t.string "home_address_street"
    t.string "home_address_city"
    t.string "home_address_state"
    t.string "home_address_zip"
    t.string "home_address_comment"
    t.string "mailing_address_street"
    t.string "mailing_address_city"
    t.string "mailing_address_state"
    t.string "mailing_address_zip"
    t.string "mailing_address_comment"
    t.string "email"
    t.string "email_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_persons_on_id", unique: true
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string "number", null: false
    t.string "phone_type"
    t.string "language"
    t.string "comment"
    t.boolean "used_in_app"
    t.bigint "persons_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_phone_numbers_on_id", unique: true
    t.index ["persons_id"], name: "index_phone_numbers_on_persons_id"
  end

  add_foreign_key "phone_numbers", "persons", column: "persons_id"
end
