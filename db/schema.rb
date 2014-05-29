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

ActiveRecord::Schema.define(version: 20140529194550) do

  create_table "gestors", force: true do |t|
    t.string   "gnombre1"
    t.string   "gnombre2"
    t.string   "gapellido1"
    t.string   "gapellido2"
    t.string   "gdireccion"
    t.string   "gtelefono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "organo_id"
    t.string   "password_digest"
  end

  create_table "organos", force: true do |t|
    t.string   "onombre"
    t.string   "odireccion"
    t.string   "otelefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
