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

ActiveRecord::Schema.define(version: 20151215011127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "emails", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "subject"
    t.text     "message"
    t.string   "sender_address"
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "name"
    t.integer  "equipment_category_id"
    t.text     "description"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "image"
    t.boolean  "published",             default: true
    t.boolean  "field",                 default: false
    t.integer  "position"
  end

  create_table "equipment_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "equipment_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "position"
  end

  create_table "gallery_images", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.boolean  "published"
  end

  create_table "inquiries", force: :cascade do |t|
    t.string   "reply_address"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

  create_table "settings", force: :cascade do |t|
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.string   "soundcloud_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "artist"
    t.boolean  "published"
    t.text     "description"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "source_url"
    t.text     "source_url_html"
    t.boolean  "published"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
