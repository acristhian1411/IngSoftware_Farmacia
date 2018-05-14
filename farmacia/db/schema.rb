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

ActiveRecord::Schema.define(version: 20180513192236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drogas", force: :cascade do |t|
    t.string   "droga_descrip"
    t.boolean  "droga_active",  default: true
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "drogas_productos", id: false, force: :cascade do |t|
    t.integer "droga_id"
    t.integer "producto_id"
  end

  add_index "drogas_productos", ["droga_id"], name: "index_drogas_productos_on_droga_id", using: :btree
  add_index "drogas_productos", ["producto_id"], name: "index_drogas_productos_on_producto_id", using: :btree

  create_table "marcas", force: :cascade do |t|
    t.string   "marca_descrip"
    t.boolean  "marca_active",  default: true
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "prod_descrip"
    t.date     "fecha_vence"
    t.integer  "cantidad"
    t.float    "precio_compra"
    t.float    "precio_venta"
    t.boolean  "prod_active",   default: true
    t.integer  "marca_id"
    t.integer  "proveedor_id"
    t.integer  "seccion_id"
    t.integer  "tipo_med_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "productos", ["marca_id"], name: "index_productos_on_marca_id", using: :btree
  add_index "productos", ["proveedor_id"], name: "index_productos_on_proveedor_id", using: :btree
  add_index "productos", ["seccion_id"], name: "index_productos_on_seccion_id", using: :btree
  add_index "productos", ["tipo_med_id"], name: "index_productos_on_tipo_med_id", using: :btree

  create_table "proveedors", force: :cascade do |t|
    t.string   "ruc"
    t.string   "razon_social"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.boolean  "prov_active",  default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "seccions", force: :cascade do |t|
    t.string   "sec_descrip"
    t.boolean  "seccion_active", default: true
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "tipo_meds", force: :cascade do |t|
    t.string   "tipo_descrip"
    t.boolean  "tipo_active",  default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "productos", "marcas"
  add_foreign_key "productos", "proveedors"
  add_foreign_key "productos", "seccions"
  add_foreign_key "productos", "tipo_meds"
end
