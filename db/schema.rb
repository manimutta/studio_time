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

ActiveRecord::Schema.define(version: 2019_09_07_110950) do

  create_table "audio_samples", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "studio_id"
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_audio_samples_on_studio_id"
  end

  create_table "booking_requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "studio_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "date"
    t.float "actual_amount"
    t.string "coupon"
    t.float "final_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_booking_requests_on_studio_id"
    t.index ["user_id"], name: "index_booking_requests_on_user_id"
  end

  create_table "bookings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "studio_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "booking_date"
    t.float "actual_amount"
    t.string "coupon"
    t.float "final_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "equipment", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "studio_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_equipment_on_studio_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "url"
    t.bigint "studio_id"
    t.string "dimensions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_images_on_studio_id"
  end

  create_table "payment_methods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "payment_type"
    t.string "payment_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payment_methods_on_user_id"
  end

  create_table "payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "booking_id"
    t.string "status"
    t.string "payment_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "studio_id"
    t.integer "rating"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_reviews_on_studio_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "social_networking_links", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "studio_id"
    t.string "networking_site"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_social_networking_links_on_studio_id"
  end

  create_table "studios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "joining_date"
    t.string "contact_number"
    t.string "website_url"
    t.string "location"
    t.decimal "location_lat", precision: 10, scale: 6
    t.decimal "location_lang", precision: 10, scale: 6
    t.text "description"
    t.integer "minimum_booking_time"
    t.text "amenities"
    t.string "working_hours"
    t.float "price_per_hour"
    t.string "billing_currency"
    t.string "studio_type"
    t.boolean "is_verfied"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "views", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "studio_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_views_on_studio_id"
    t.index ["user_id"], name: "index_views_on_user_id"
  end

  add_foreign_key "audio_samples", "studios"
  add_foreign_key "booking_requests", "studios"
  add_foreign_key "booking_requests", "users"
  add_foreign_key "bookings", "studios"
  add_foreign_key "bookings", "users"
  add_foreign_key "equipment", "studios"
  add_foreign_key "images", "studios"
  add_foreign_key "payment_methods", "users"
  add_foreign_key "payments", "bookings"
  add_foreign_key "reviews", "studios"
  add_foreign_key "reviews", "users"
  add_foreign_key "social_networking_links", "studios"
  add_foreign_key "studios", "users"
  add_foreign_key "views", "studios"
  add_foreign_key "views", "users"
end
