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

ActiveRecord::Schema.define(version: 20170720142553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discipline_contents", force: :cascade do |t|
    t.integer  "position"
    t.string   "title"
    t.text     "description"
    t.integer  "lecture_hours",     default: 0
    t.integer  "practice_hours",    default: 0
    t.integer  "other_hours",       default: 0
    t.integer  "work_programms_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["work_programms_id"], name: "index_discipline_contents_on_work_programms_id", using: :btree
  end

  create_table "literatures", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "link"
    t.datetime "publishing_year"
    t.integer  "work_programms_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["work_programms_id"], name: "index_literatures_on_work_programms_id", using: :btree
  end

  create_table "work_programms", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
