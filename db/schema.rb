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

ActiveRecord::Schema.define(version: 2021_07_10_194144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.string "access_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.integer "user_id"
    t.string "phonenumber"
    t.string "bio"
    t.date "date_of_birth"
    t.string "country"
    t.string "address"
    t.string "cover_photo"
    t.string "profile_photo"
    t.string "website"
    t.decimal "total_amount_invested"
    t.integer "companies_invested_in"
    t.decimal "investment_annual_limit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "firstname"
    t.string "lastname"
    t.string "account_type"
    t.string "profile_photo"
    t.boolean "verified"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ventures", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "short_description"
    t.string "logo"
    t.string "sector"
    t.string "investment_stage"
    t.integer "total_investors"
    t.decimal "amount_invested"
    t.date "initial_investing_date"
    t.date "last_investing_date"
    t.decimal "minimum_investment_amount"
    t.string "activation_status"
    t.string "approval_status"
    t.date "approved_date"
    t.string "pitchdeck"
    t.text "traction"
    t.string "location"
    t.string "referred_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
