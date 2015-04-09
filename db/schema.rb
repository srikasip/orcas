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

ActiveRecord::Schema.define(version: 20150409153504) do

  create_table "event_aggs", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "site_type"
    t.string   "pagination"
    t.string   "domain"
    t.string   "eventDetailsPageLink_xpath"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_parsers", force: true do |t|
    t.text     "eventName_xpath"
    t.text     "eventLocation_xpath"
    t.text     "eventDateTime_xpath"
    t.text     "eventDescription_xpath"
    t.text     "eventPrice_xpath"
    t.text     "eventImage_xpath"
    t.integer  "event_agg_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
