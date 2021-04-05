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

ActiveRecord::Schema.define(version: 2021_04_05_090904) do

  create_table "danhmucsaches", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_sach"
    t.string "ten_sach"
    t.string "mtg"
    t.string "mtl"
    t.string "maNXB"
    t.integer "nxb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "danhmuctacgia", charset: "utf8mb4", force: :cascade do |t|
    t.string "mtg"
    t.string "ten_tacgia"
    t.string "website"
    t.string "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nhaxuatbans", charset: "utf8mb4", force: :cascade do |t|
    t.string "maNXB"
    t.string "ten_NXB"
    t.string "diachi"
    t.string "email"
    t.string "thongtin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "theloais", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_theloai"
    t.string "ten_theloai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
