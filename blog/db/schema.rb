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

ActiveRecord::Schema.define(version: 2022_09_29_061810) do

  create_table "post_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.string "comment"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_comments_on_post_id"
    t.index ["user_id"], name: "index_post_comments_on_user_id"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "post_title"
    t.datetime "post_date"
    t.string "post_description"
    t.string "user_id"
    t.string "slug"
    t.boolean "is_published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "user_name"
    t.string "aadhar_no"
    t.string "first_name"
    t.string "last_name"
    t.string "mobile"
    t.string "email"
    t.datetime "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "middle_name"
    t.bigint "created_by_user_id"
    t.index ["created_by_user_id"], name: "index_users_on_created_by_user_id"
  end

  add_foreign_key "post_comments", "posts"
  add_foreign_key "post_comments", "users"
end
