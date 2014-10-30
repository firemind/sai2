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

ActiveRecord::Schema.define(version: 20141022142235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: true do |t|
    t.string   "name",                             null: false
    t.integer  "gender",     limit: 2, default: 0, null: false
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actors_watchables", id: false, force: true do |t|
    t.integer  "watchable_id", null: false
    t.integer  "actor_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "episodes", force: true do |t|
    t.integer  "season_nr"
    t.integer  "watchable_id", null: false
    t.integer  "serie_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.integer  "rottentomatoesrating"
    t.integer  "watchable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "series", force: true do |t|
    t.string   "name",                           null: false
    t.string   "language",   default: "english"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "torrents", force: true do |t|
    t.string   "enclosure_url",             null: false
    t.integer  "files",         default: 1, null: false
    t.integer  "job_id"
    t.string   "name",                      null: false
    t.datetime "pub_date"
    t.integer  "rating"
    t.string   "size"
    t.integer  "watchable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "watchables", force: true do |t|
    t.boolean  "dl_finished", default: false, null: false
    t.date     "firstaired"
    t.string   "name",                        null: false
    t.boolean  "watched",     default: false, null: false
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "actors_watchables", "actors", name: "actors_watchables_actor_id_fk"
  add_foreign_key "actors_watchables", "watchables", name: "actors_watchables_watchable_id_fk"

  add_foreign_key "episodes", "series", name: "episodes_serie_id_fk"
  add_foreign_key "episodes", "watchables", name: "episodes_watchable_id_fk"

  add_foreign_key "movies", "watchables", name: "movies_watchable_id_fk"

  add_foreign_key "torrents", "watchables", name: "torrents_watchable_id_fk"

end
