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

ActiveRecord::Schema.define(:version => 20130831115716) do

  create_table "leans", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.text     "description"
    t.string   "info"
    t.string   "logo"
    t.string   "wiki"
    t.string   "url"
    t.string   "link"
    t.string   "footer"
    t.string   "label"
    t.string   "form_name"
    t.text     "lean_parent_ids"
    t.text     "lean_path_ids"
    t.text     "lean_child_ids"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "request_logs", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "url",        :null => false
    t.string   "remote_ip",  :null => false
    t.string   "format",     :null => false
    t.string   "method",     :null => false
    t.string   "protocol",   :null => false
    t.string   "host",       :null => false
    t.string   "port",       :null => false
    t.string   "parameters"
    t.string   "controller"
    t.string   "action"
    t.string   "user_agent"
    t.string   "platform"
    t.string   "browser"
    t.string   "version"
    t.datetime "created_on", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
