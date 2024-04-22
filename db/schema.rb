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

ActiveRecord::Schema[7.1].define(version: 2024_04_21_225045) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "corpora", comment: "Text corpora", force: :cascade do |t|
    t.uuid "uuid", null: false
    t.uuid "user_uuid", comment: "Owner"
    t.string "title", null: false
    t.integer "text_sample_count", default: 0, null: false, comment: "Counter cache for samples"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_uuid", "title"], name: "index_corpora_on_user_uuid_and_title", unique: true
    t.index ["uuid"], name: "index_corpora_on_uuid", unique: true
  end

end
