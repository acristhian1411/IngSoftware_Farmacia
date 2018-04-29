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

ActiveRecord::Schema.define(version: 20180429124436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "marcas", force: :cascade do |t|
    t.string   "marca_descrip"
    t.boolean  "marca_active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string   "ruc"
    t.string   "razon_social"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.boolean  "prov_active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "seccions", force: :cascade do |t|
    t.string   "sec_descrip"
    t.boolean  "seccion_active"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tipo_meds", force: :cascade do |t|
    t.string   "tipo_descrip"
    t.boolean  "tipo_active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
