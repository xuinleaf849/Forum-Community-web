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

ActiveRecord::Schema.define(version: 0) do

  create_table "comments", force: :cascade do |t|
    t.text "message"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "discussion_id"
    t.integer "user_id"
    t.index ["discussion_id"], name: "index_comments_on_discussion_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.integer "topic_id"
    t.integer "user_id"
    t.index ["topic_id"], name: "index_discussions_on_topic_id"
    t.index ["user_id"], name: "index_discussions_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "password_digest"
    t.text "username"
    t.boolean "is_admin", default: false
  end

end
