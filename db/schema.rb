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

ActiveRecord::Schema.define(version: 20150420161107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text",                            null: false
    t.hstore   "metadata"
    t.integer  "bundle_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "type",        default: "Article"
    t.string   "title_image"
  end

  add_index "articles", ["type"], name: "index_articles_on_type", using: :btree

  create_table "attachments", force: :cascade do |t|
    t.string   "file",        null: false
    t.integer  "article_id"
    t.string   "title"
    t.text     "description"
    t.text     "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attachments", ["article_id"], name: "index_attachments_on_article_id", using: :btree

  create_table "bundles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exported_files", force: :cascade do |t|
    t.string   "file",               null: false
    t.integer  "article_id"
    t.string   "title"
    t.text     "url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "exported_format_id"
    t.integer  "formatter_id"
  end

  add_index "exported_files", ["article_id"], name: "index_exported_files_on_article_id", using: :btree
  add_index "exported_files", ["exported_format_id"], name: "index_exported_files_on_exported_format_id", using: :btree
  add_index "exported_files", ["formatter_id"], name: "index_exported_files_on_formatter_id", using: :btree

  create_table "exported_formats", force: :cascade do |t|
    t.string   "name"
    t.string   "extention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formatters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.string   "title"
    t.text     "text",       null: false
    t.integer  "bundle_id",  null: false
    t.integer  "score"
    t.hstore   "metadata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ideas", ["bundle_id"], name: "index_ideas_on_bundle_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.integer  "article_id",        null: false
    t.integer  "publish_target_id", null: false
    t.integer  "status",            null: false
    t.text     "canonical_url"
    t.hstore   "metadata"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "publications", ["article_id"], name: "index_publications_on_article_id", using: :btree
  add_index "publications", ["publish_target_id"], name: "index_publications_on_publish_target_id", using: :btree

  create_table "publish_targets", force: :cascade do |t|
    t.integer  "bundle_id",    null: false
    t.string   "name",         null: false
    t.integer  "publisher_id", null: false
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "url",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_oauths", force: :cascade do |t|
    t.text     "client_key"
    t.text     "secret_key"
    t.integer  "publisher_id", null: false
    t.integer  "team_id",      null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "user_oauths", ["publisher_id"], name: "index_user_oauths_on_publisher_id", using: :btree
  add_index "user_oauths", ["team_id"], name: "index_user_oauths_on_team_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "attachments", "articles"
  add_foreign_key "exported_files", "articles"
  add_foreign_key "exported_files", "exported_formats"
  add_foreign_key "exported_files", "formatters"
  add_foreign_key "ideas", "bundles"
  add_foreign_key "publications", "articles"
  add_foreign_key "publications", "publish_targets"
  add_foreign_key "user_oauths", "publishers"
  add_foreign_key "user_oauths", "teams"
end
