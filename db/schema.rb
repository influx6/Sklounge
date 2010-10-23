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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101023204406) do

  create_table "bulletins", :force => true do |t|
    t.string   "title"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string "event_name"
    t.string "event_start_time"
    t.string "event_end_time"
    t.date   "event_start_date"
    t.date   "event_end_date"
  end

  create_table "galleries", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "gallery_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "reservations", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "number_of_guest"
    t.date     "reservation_date"
    t.string   "reservation_time"
    t.string   "table_reservation"
    t.string   "extra_msg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statics", :force => true do |t|
    t.text     "show_desc"
    t.text     "contact_desc"
    t.string   "static_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
