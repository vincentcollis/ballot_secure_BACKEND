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

ActiveRecord::Schema.define(version: 2020_10_21_034441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ballots", force: :cascade do |t|
    t.integer "voter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registered_voters", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.integer "housenumber"
    t.string "streetname"
    t.string "city"
    t.integer "zip5"
    t.integer "zip4"
    t.string "dob"
    t.string "gender"
    t.string "politicalparty"
    t.integer "countycode"
    t.integer "electiondistrict"
    t.integer "legislativedistrict"
    t.integer "ward"
    t.integer "congressionaldistrict"
    t.integer "senatedistrict"
    t.integer "assemblydistrict"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "voters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "candidate_id"
    t.integer "ballot_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
