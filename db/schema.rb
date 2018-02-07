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

ActiveRecord::Schema.define(version: 20180207033558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banana_transactions", force: :cascade do |t|
    t.integer "source_user_id"
    t.integer "target_user_id"
    t.integer "story_entry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.integer "banana"
    t.text "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "story_img"
  end

  create_table "story_entries", force: :cascade do |t|
    t.bigint "story_id"
    t.bigint "user_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_story_entries_on_story_id"
    t.index ["user_id"], name: "index_story_entries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.text "password_digest"
    t.integer "banana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_url"
  end

  add_foreign_key "story_entries", "stories"
  add_foreign_key "story_entries", "users"
end
