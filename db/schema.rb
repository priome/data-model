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

ActiveRecord::Schema.define(version: 20180811094447) do

  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.text   "description"
    t.string "color",       default: "copper"
  end

  create_table "buff_effects", force: :cascade do |t|
    t.integer "buff_id"
    t.integer "effect_id"
    t.decimal "amount",    precision: 3, scale: 2
    t.index ["buff_id"], name: "index_buff_effects_on_buff_id"
    t.index ["effect_id"], name: "index_buff_effects_on_effect_id"
  end

  create_table "buffs", force: :cascade do |t|
    t.string  "name"
    t.integer "quest_streak_id"
    t.text    "description"
    t.index ["quest_streak_id"], name: "index_buffs_on_quest_streak_id"
  end

  create_table "daily_quests", force: :cascade do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "effects", force: :cascade do |t|
    t.string "name"
  end

  create_table "quest_streaks", force: :cascade do |t|
    t.integer "daily_quest_id"
    t.integer "days",           default: 7
    t.index ["daily_quest_id"], name: "index_quest_streaks_on_daily_quest_id"
  end

  create_table "resource_items", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.string  "url"
    t.integer "evidence_level", default: 0
    t.integer "quest_id"
    t.index ["quest_id"], name: "index_resource_items_on_quest_id"
  end

  create_table "scrolls", force: :cascade do |t|
    t.string "name"
    t.text   "effect"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
