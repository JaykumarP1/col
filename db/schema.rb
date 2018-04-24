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

ActiveRecord::Schema.define(version: 2018_04_23_204627) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "readable_type"
    t.integer "readable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["readable_type", "readable_id"], name: "index_books_on_readable_type_and_readable_id"
  end

  create_table "depts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "depts_teachers", id: false, force: :cascade do |t|
    t.integer "dept_id", null: false
    t.integer "teacher_id", null: false
  end

  create_table "depts_teaches", id: false, force: :cascade do |t|
    t.integer "dept_id", null: false
    t.integer "teach_id", null: false
  end

  create_table "studs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dept_id"
    t.index ["dept_id"], name: "index_studs_on_dept_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teaches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
