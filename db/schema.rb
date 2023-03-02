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

ActiveRecord::Schema[7.0].define(version: 2023_03_02_195405) do
  create_table "fake_games", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "games_id"
    t.index ["games_id"], name: "index_fake_games_on_games_id"
  end

  create_table "free_games", force: :cascade do |t|
    t.string "title"
    t.string "thumbnail"
    t.string "description"
    t.string "genre"
    t.string "game_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.decimal "sale_price"
    t.decimal "normal_price"
    t.integer "release_date"
    t.integer "steam_rating_percent"
    t.integer "steam_rating_count"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "savings"
    t.integer "games_id"
  end

  add_foreign_key "fake_games", "games", column: "games_id"
end
