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

ActiveRecord::Schema.define(:version => 20120319090710) do

  create_table "admins", :force => true do |t|
    t.string   "email",                             :default => "", :null => false
    t.string   "encrypted_password", :limit => 128, :default => "", :null => false
    t.integer  "sign_in_count",                     :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",                   :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "albums", :force => true do |t|
    t.integer  "award_id"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_id"
  end

  create_table "awards", :force => true do |t|
    t.string   "title"
    t.text   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "committees", :force => true do |t|
    t.string   "name"
    t.integer  "phone_no"
    t.string   "email"
    t.string   "designation"
    t.text     "brief_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "committee"
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.text   "description"
    t.string   "reg_no"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
