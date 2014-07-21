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

ActiveRecord::Schema.define(version: 20140721025853) do

  create_table "applications", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.text     "q1"
    t.text     "q2"
    t.text     "q3"
    t.text     "q4"
    t.text     "q5"
    t.string   "q6"
    t.text     "q7a"
    t.text     "q7b"
    t.text     "q7c"
    t.text     "q7d"
    t.text     "q8"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

end
