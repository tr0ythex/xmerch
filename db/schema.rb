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

ActiveRecord::Schema.define(version: 20151217103137) do

  create_table "checked_products", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.boolean  "checked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_photos", force: :cascade do |t|
    t.binary   "file"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_photos", ["order_id"], name: "index_order_photos_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "status"
    t.integer  "reward"
    t.datetime "deadline"
    t.integer  "user_id"
    t.integer  "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["shop_id"], name: "index_orders_on_shop_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_items", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "task_items_tasks", id: false, force: :cascade do |t|
    t.integer "task_id",      null: false
    t.integer "task_item_id", null: false
  end

  add_index "task_items_tasks", ["task_id"], name: "index_task_items_tasks_on_task_id"
  add_index "task_items_tasks", ["task_item_id"], name: "index_task_items_tasks_on_task_item_id"

  create_table "tasks", force: :cascade do |t|
    t.boolean  "required"
    t.integer  "reward"
    t.boolean  "complete"
    t.boolean  "photo_required"
    t.integer  "order_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tasks", ["order_id"], name: "index_tasks_on_order_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "age"
    t.string   "email"
    t.string   "sex"
    t.float    "balance"
    t.boolean  "withdraw_requested"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "auth_token",         null: false
  end

end
