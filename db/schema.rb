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

ActiveRecord::Schema.define(version: 20200719090340) do

  create_table "evaluations", force: :cascade do |t|
    t.integer "point"
    t.text "review"
    t.integer "sweet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sweet_id", "created_at"], name: "index_evaluations_on_sweet_id_and_created_at"
    t.index ["sweet_id"], name: "index_evaluations_on_sweet_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sweets", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "genre"
    t.datetime "release_date"
    t.datetime "end_date"
    t.integer "limited"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
