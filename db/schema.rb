# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150321004558) do

  create_table "categories", force: :cascade do |t|
    t.string   "category",  limit: 255
    t.boolean  "active",    limit: 1
    t.datetime "createdAt"
    t.datetime "updatedAt"
  end

  create_table "ideas", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "category",    limit: 255
    t.text     "content",     limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "createdDate"
    t.datetime "updatedDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "idea_id",      limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "IsInterested", limit: 1
    t.text     "Comment",      limit: 65535
  end

  add_index "interests", ["idea_id"], name: "index_interests_on_idea_id", using: :btree
  add_index "interests", ["user_id"], name: "index_interests_on_user_id", using: :btree

  create_table "user_details", force: :cascade do |t|
    t.string   "nickname",    limit: 255
    t.integer  "likes",       limit: 4
    t.integer  "user_id",     limit: 4
    t.integer  "rating",      limit: 4
    t.integer  "postCount",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "testimonial", limit: 65535
  end

  add_index "user_details", ["user_id"], name: "index_user_details_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "has_attached_file",      limit: 255
    t.string   "firstName",              limit: 255
    t.string   "lastName",               limit: 255
    t.string   "address",                limit: 255
    t.string   "city",                   limit: 255
    t.string   "state",                  limit: 255
    t.string   "zipCode",                limit: 255
    t.string   "phone",                  limit: 255
    t.string   "name",                   limit: 255
    t.string   "username",               limit: 255
    t.string   "location",               limit: 255
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.integer  "ideas_id",               limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["ideas_id"], name: "index_users_on_ideas_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "interests", "ideas"
  add_foreign_key "interests", "users"
end
