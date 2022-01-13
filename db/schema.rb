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

ActiveRecord::Schema.define(version: 2022_01_13_043055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "completed_job_statuses", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "job_status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_completed_job_statuses_on_job_id"
    t.index ["job_status_id"], name: "index_completed_job_statuses_on_job_status_id"
  end

  create_table "job_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "url"
    t.string "job_title"
    t.bigint "location_id", null: false
    t.bigint "pay_range_id", null: false
    t.bigint "company_id", null: false
    t.bigint "job_status_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
    t.index ["job_status_id"], name: "index_jobs_on_job_status_id"
    t.index ["location_id"], name: "index_jobs_on_location_id"
    t.index ["pay_range_id"], name: "index_jobs_on_pay_range_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pay_ranges", force: :cascade do |t|
    t.string "range"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "completed_job_statuses", "job_statuses"
  add_foreign_key "completed_job_statuses", "jobs"
  add_foreign_key "jobs", "companies"
  add_foreign_key "jobs", "job_statuses"
  add_foreign_key "jobs", "locations"
  add_foreign_key "jobs", "pay_ranges"
  add_foreign_key "jobs", "users"
end
