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

ActiveRecord::Schema.define(version: 2021_12_02_061628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.string "record_type"
    t.bigint "record_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id"], name: "index_favorites_on_record_type_and_record_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "industry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "fav"
    t.boolean "new"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "kind"
    t.string "description"
    t.string "url"
    t.boolean "fav"
  end

  create_table "test_results", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_test_results_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "age"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "location"
    t.text "languages"
    t.text "code"
    t.text "slogan"
    t.text "quote"
    t.text "passions"
    t.text "hobbies"
    t.text "story"
    t.text "work_style"
    t.text "causes"
    t.text "why"
    t.text "hours"
    t.text "commute"
    t.text "skills"
    t.text "contribute"
    t.text "comp"
    t.text "teammates"
    t.text "boss"
    t.text "org_structure"
    t.text "size"
    t.text "work_structure"
    t.text "amenities"
    t.text "travel"
    t.text "pic_url"
    t.text "portfolio_url"
    t.text "cv_url"
    t.text "cover_letter_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "users"
  add_foreign_key "test_results", "users"
end
