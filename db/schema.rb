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

ActiveRecord::Schema.define(version: 20161006144457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "broadcast_lists", primary_key: "list_id", id: :integer, force: :cascade do |t|
    t.string   "list_name"
    t.string   "owner_jid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "current_chats", force: :cascade do |t|
    t.string   "jid_from"
    t.string   "jid_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firms", primary_key: "firm_number", id: :integer, force: :cascade do |t|
    t.string   "firm_full_name"
    t.string   "firm_short_name"
    t.string   "firm_domain"
    t.text     "firm_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "group_members", force: :cascade do |t|
    t.integer  "group_id"
    t.string   "member_jid"
    t.boolean  "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", primary_key: "group_id", id: :integer, force: :cascade do |t|
    t.string   "group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_members", force: :cascade do |t|
    t.integer  "list_id"
    t.string   "member_jid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "open_groups", force: :cascade do |t|
    t.string   "jid"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "open_lists", force: :cascade do |t|
    t.string   "jid"
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_relationships", force: :cascade do |t|
    t.string   "jid_from"
    t.string   "jid_to"
    t.integer  "relation_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", primary_key: "user_id", id: :integer, force: :cascade do |t|
    t.integer  "firm_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "short_name"
    t.string   "display_picture"
    t.string   "j_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
