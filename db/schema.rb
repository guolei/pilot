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

ActiveRecord::Schema.define(:version => 20110310031752) do

  create_table "biz_profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "biz_profiles", ["user_id"], :name => "index_biz_profiles_on_user_id", :unique => true

  create_table "sns_accounts", :force => true do |t|
    t.integer  "user_id"
    t.string   "type"
    t.string   "access_token"
    t.string   "name"
    t.string   "link_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sns_accounts", ["user_id"], :name => "index_sns_accounts_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "type"
    t.string   "mail"
    t.string   "sn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["sn"], :name => "index_users_on_sn", :unique => true

end
