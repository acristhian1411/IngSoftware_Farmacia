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

ActiveRecord::Schema.define(version: 20180606010127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "ruc"
    t.string   "direccion"
    t.integer  "telefono"
    t.boolean  "cliente_active"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "drogas", force: :cascade do |t|
    t.string   "droga_descrip"
    t.boolean  "droga_active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "drogas_x_productos", force: :cascade do |t|
    t.integer  "droga_id"
    t.integer  "producto_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "drogas_x_productos", ["droga_id"], name: "index_drogas_x_productos_on_droga_id", using: :btree
  add_index "drogas_x_productos", ["producto_id"], name: "index_drogas_x_productos_on_producto_id", using: :btree

  create_table "marcas", force: :cascade do |t|
    t.string   "marca_descrip"
    t.boolean  "marca_active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "prod_descrip"
    t.date     "fecha_vence"
    t.integer  "cantidad"
    t.float    "precio_compra"
    t.float    "precio_venta"
    t.boolean  "prod_active"
    t.integer  "marca_id"
    t.integer  "proveedor_id"
    t.integer  "seccion_id"
    t.integer  "tipo_med_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "drogas_x_productos", "drogas"
  add_foreign_key "drogas_x_productos", "productos"
  add_foreign_key "productos", "marcas"
  add_foreign_key "productos", "proveedors"
  add_foreign_key "productos", "seccions"
  add_foreign_key "productos", "tipo_meds"
end
