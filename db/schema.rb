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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131218133457) do

  create_table "coaches", :force => true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.string   "nationality"
    t.string   "yearsExperience"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "divisions", :force => true do |t|
    t.string   "title"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "player_statistics", :force => true do |t|
    t.integer  "player_id"
    t.decimal  "ppg"
    t.decimal  "rpg"
    t.decimal  "apg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.decimal  "position_id"
    t.integer  "team_id"
    t.integer  "jerseynumber"
    t.string   "name"
    t.integer  "yearspro"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "rookieyear"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", :force => true do |t|
    t.string   "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stores", :force => true do |t|
    t.string   "category"
    t.decimal  "price"
    t.integer  "stocklevel"
    t.date     "startdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "picture"
  end

  create_table "teams", :force => true do |t|
    t.string   "division_id"
    t.string   "name"
    t.string   "generalManageer"
    t.string   "city"
    t.string   "arena"
    t.string   "yearfounded"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "logo"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "dob"
    t.string   "sex"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
