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

ActiveRecord::Schema.define(version: 20180813181540) do

  create_table "chapters", force: :cascade do |t|
    t.integer "chapter_id"
    t.string "title"
    t.string "title_en"
    t.string "summary"
    t.integer "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "name_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "entities", force: :cascade do |t|
    t.string "title"
    t.string "title_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "poster_file_name"
    t.string "poster_content_type"
    t.integer "poster_file_size"
    t.datetime "poster_updated_at"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "content"
    t.string "content_en"
    t.integer "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "quote_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ip"
  end

  create_table "related_characters", force: :cascade do |t|
    t.integer "quote_id"
    t.integer "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
