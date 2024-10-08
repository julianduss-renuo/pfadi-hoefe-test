# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_01_073123) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "anmeldungs", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "birthday"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "place"
    t.string "zipcode"
    t.string "allergies"
    t.string "stufe"
    t.string "krankenkasse"
    t.string "ahv_number"
    t.boolean "rights_to_pictures"
    t.string "message"
    t.boolean "order_pfadikravatte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "archives", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bestellungs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "zipcode"
    t.string "message"
    t.string "order_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kleiders_id"
    t.index ["kleiders_id"], name: "index_bestellungs_on_kleiders_id"
  end

  create_table "hocks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "datetime"
    t.string "stufe"
    t.integer "leader_id", null: false
    t.string "ort"
    t.index ["leader_id"], name: "index_hocks_on_leader_id"
  end

  create_table "kleiders", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.decimal "price"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaders", force: :cascade do |t|
    t.string "pfadiname"
    t.string "first_name"
    t.string "last_name"
    t.string "stufe"
    t.string "funktion"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_leaders_on_email", unique: true
    t.index ["reset_password_token"], name: "index_leaders_on_reset_password_token", unique: true
    t.index ["stufe", "funktion"], name: "index_leaders_on_stufe_and_funktion", unique: true
  end

  create_table "leiters", force: :cascade do |t|
    t.string "pfadiname"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.string "stufe"
    t.string "funktion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["stufe", "funktion"], name: "index_leiters_on_stufe_and_funktion", unique: true
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "hocks", "leaders", primary_key: "id"
end
