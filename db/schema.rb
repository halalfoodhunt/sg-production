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

ActiveRecord::Schema.define(version: 20180104070108) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "baker_dish_items", force: :cascade do |t|
    t.integer  "baker_id"
    t.integer  "baker_menu_item_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "baker_menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baker_product_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baker_product_types", force: :cascade do |t|
    t.integer  "baker_id"
    t.integer  "baker_product_category_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "baker_service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baker_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bakers", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "website_online_ordering_page"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.string   "self_collection_address"
    t.text     "question_1"
    t.datetime "expiry_date"
    t.datetime "halal_expiry"
    t.boolean  "draft",                        default: true
    t.boolean  "verified",                     default: false
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "baker_type_id"
    t.integer  "opening_hour_id"
    t.integer  "menu_id"
    t.integer  "verifying_document_id"
    t.integer  "delivery_location_id"
    t.integer  "ordering_method_id"
    t.integer  "baker_service_type_id"
    t.integer  "baker_product_category_id"
    t.integer  "menu_item_id"
    t.string   "slug"
    t.integer  "baker_menu_item_id"
  end

  add_index "bakers", ["baker_menu_item_id"], name: "index_bakers_on_baker_menu_item_id"
  add_index "bakers", ["baker_product_category_id"], name: "index_bakers_on_baker_product_category_id"
  add_index "bakers", ["baker_service_type_id"], name: "index_bakers_on_baker_service_type_id"
  add_index "bakers", ["baker_type_id"], name: "index_bakers_on_baker_type_id"
  add_index "bakers", ["delivery_location_id"], name: "index_bakers_on_delivery_location_id"
  add_index "bakers", ["listing_id"], name: "index_bakers_on_listing_id"
  add_index "bakers", ["menu_item_id"], name: "index_bakers_on_menu_item_id"
  add_index "bakers", ["merchant_id"], name: "index_bakers_on_merchant_id"
  add_index "bakers", ["ordering_method_id"], name: "index_bakers_on_ordering_method_id"
  add_index "bakers", ["qualifying_type_id"], name: "index_bakers_on_qualifying_type_id"
  add_index "bakers", ["reward_id"], name: "index_bakers_on_reward_id"
  add_index "bakers", ["slug"], name: "index_bakers_on_slug", unique: true

  create_table "booking_methods", force: :cascade do |t|
    t.integer  "homy_id"
    t.integer  "ordering_method_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "online_retail_id"
    t.integer  "raw_food_id"
    t.integer  "supplier_id"
    t.integer  "baker_id"
  end

  create_table "caterer_categories", force: :cascade do |t|
    t.integer  "caterer_id"
    t.integer  "caterer_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "caterer_dish_items", force: :cascade do |t|
    t.integer  "caterer_id"
    t.integer  "caterer_menu_item_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "caterer_menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caterer_service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caterer_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caterers", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "website_online_ordering_page"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.text     "question_1"
    t.datetime "expiry_date"
    t.datetime "halal_expiry"
    t.boolean  "draft",                        default: true
    t.boolean  "verified",                     default: false
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "opening_hour_id"
    t.integer  "menu_id"
    t.integer  "verifying_document_id"
    t.integer  "caterer_type_id"
    t.integer  "cuisine_type_id"
    t.integer  "caterer_service_type_id"
    t.integer  "event_type_id"
    t.string   "slug"
    t.integer  "caterer_menu_item_id"
  end

  add_index "caterers", ["caterer_menu_item_id"], name: "index_caterers_on_caterer_menu_item_id"
  add_index "caterers", ["caterer_service_type_id"], name: "index_caterers_on_caterer_service_type_id"
  add_index "caterers", ["caterer_type_id"], name: "index_caterers_on_caterer_type_id"
  add_index "caterers", ["cuisine_type_id"], name: "index_caterers_on_cuisine_type_id"
  add_index "caterers", ["event_type_id"], name: "index_caterers_on_event_type_id"
  add_index "caterers", ["listing_id"], name: "index_caterers_on_listing_id"
  add_index "caterers", ["merchant_id"], name: "index_caterers_on_merchant_id"
  add_index "caterers", ["qualifying_type_id"], name: "index_caterers_on_qualifying_type_id"
  add_index "caterers", ["reward_id"], name: "index_caterers_on_reward_id"
  add_index "caterers", ["slug"], name: "index_caterers_on_slug", unique: true

  create_table "confectioner_service_types", force: :cascade do |t|
    t.integer  "baker_type_id"
    t.integer  "baker_service_type_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "baker_id"
  end

  create_table "cooking_service_types", force: :cascade do |t|
    t.integer  "caterer_id"
    t.integer  "caterer_service_type_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cooking_types", force: :cascade do |t|
    t.integer  "caterer_id"
    t.integer  "cuisine_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cuisine_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dining_types", force: :cascade do |t|
    t.string   "name"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string   "name"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "dish_items", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "menu_item_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "online_retail_id"
    t.integer  "baker_id"
    t.integer  "homy_id"
    t.integer  "supplier_id"
    t.integer  "raw_food_id"
    t.integer  "caterer_id"
    t.integer  "food_delivery_id"
  end

  create_table "eateries", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "dining_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "food_deliveries", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "delivery_hotline"
    t.string   "general_email"
    t.string   "link_to_online_ordering_page"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.text     "question_1"
    t.boolean  "draft",                        default: true
    t.boolean  "verified",                     default: false
    t.datetime "halal_expiry"
    t.datetime "expiry_date"
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "opening_hour_id"
    t.integer  "menu_id"
    t.integer  "verifying_document_id"
    t.integer  "delivery_location_id"
    t.integer  "main_ordering_method_id"
    t.integer  "delivery_service_type_id"
    t.string   "slug"
    t.integer  "menu_item_id"
    t.integer  "food_deliveries_menu_item_id"
  end

  add_index "food_deliveries", ["delivery_location_id"], name: "index_food_deliveries_on_delivery_location_id"
  add_index "food_deliveries", ["delivery_service_type_id"], name: "index_food_deliveries_on_delivery_service_type_id"
  add_index "food_deliveries", ["food_deliveries_menu_item_id"], name: "index_food_deliveries_on_food_deliveries_menu_item_id"
  add_index "food_deliveries", ["listing_id"], name: "index_food_deliveries_on_listing_id"
  add_index "food_deliveries", ["main_ordering_method_id"], name: "index_food_deliveries_on_main_ordering_method_id"
  add_index "food_deliveries", ["merchant_id"], name: "index_food_deliveries_on_merchant_id"
  add_index "food_deliveries", ["qualifying_type_id"], name: "index_food_deliveries_on_qualifying_type_id"
  add_index "food_deliveries", ["reward_id"], name: "index_food_deliveries_on_reward_id"
  add_index "food_deliveries", ["slug"], name: "index_food_deliveries_on_slug", unique: true

  create_table "food_deliveries_dish_items", force: :cascade do |t|
    t.integer  "food_delivery_id"
    t.integer  "food_deliveries_menu_item_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "food_deliveries_menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "friends", force: :cascade do |t|
    t.string   "name"
    t.string   "uid"
    t.string   "email"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "function_types", force: :cascade do |t|
    t.integer  "caterer_id"
    t.integer  "event_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "highlights", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homie_service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homie_work_types", force: :cascade do |t|
    t.integer  "homie_service_type_id"
    t.integer  "homy_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "homies", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "website_online_ordering_page"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.text     "question_1"
    t.text     "question_2"
    t.boolean  "draft",                        default: true
    t.boolean  "verified",                     default: false
    t.datetime "halal_expiry"
    t.datetime "expiry_date"
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "menu_id"
    t.integer  "verifying_document_id"
    t.integer  "ordering_method_id"
    t.integer  "homies_type_id"
    t.integer  "delivery_location_id"
    t.text     "self_collect_location"
    t.integer  "homie_service_type_id"
    t.string   "slug"
    t.integer  "homies_menu_item_id"
    t.integer  "opening_hour_id"
  end

  add_index "homies", ["delivery_location_id"], name: "index_homies_on_delivery_location_id"
  add_index "homies", ["homie_service_type_id"], name: "index_homies_on_homie_service_type_id"
  add_index "homies", ["homies_menu_item_id"], name: "index_homies_on_homies_menu_item_id"
  add_index "homies", ["homies_type_id"], name: "index_homies_on_homies_type_id"
  add_index "homies", ["listing_id"], name: "index_homies_on_listing_id"
  add_index "homies", ["merchant_id"], name: "index_homies_on_merchant_id"
  add_index "homies", ["ordering_method_id"], name: "index_homies_on_ordering_method_id"
  add_index "homies", ["qualifying_type_id"], name: "index_homies_on_qualifying_type_id"
  add_index "homies", ["reward_id"], name: "index_homies_on_reward_id"
  add_index "homies", ["slug"], name: "index_homies_on_slug", unique: true

  create_table "homies_dish_items", force: :cascade do |t|
    t.integer  "homy_id"
    t.integer  "homies_menu_item_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "homies_menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homies_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "name"
    t.integer  "merchant_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  add_index "listings", ["merchant_id"], name: "index_listings_on_merchant_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_ordering_methods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "name"
    t.text     "description"
    t.decimal  "price",              precision: 8, scale: 2
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "place_id"
    t.integer  "food_delivery_id"
    t.integer  "homy_id"
    t.integer  "online_retail_id"
    t.integer  "raw_food_id"
    t.integer  "supplier_id"
    t.integer  "caterer_id"
    t.integer  "baker_id"
  end

  add_index "menus", ["baker_id"], name: "index_menus_on_baker_id"
  add_index "menus", ["caterer_id"], name: "index_menus_on_caterer_id"
  add_index "menus", ["food_delivery_id"], name: "index_menus_on_food_delivery_id"
  add_index "menus", ["homy_id"], name: "index_menus_on_homy_id"
  add_index "menus", ["online_retail_id"], name: "index_menus_on_online_retail_id"
  add_index "menus", ["place_id"], name: "index_menus_on_place_id"
  add_index "menus", ["raw_food_id"], name: "index_menus_on_raw_food_id"
  add_index "menus", ["supplier_id"], name: "index_menus_on_supplier_id"

  create_table "merchants", force: :cascade do |t|
    t.string   "email",                        default: "", null: false
    t.string   "encrypted_password",           default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "name"
    t.string   "position"
    t.string   "mobile_number"
    t.string   "registered_name_of_business"
    t.string   "business_registration_number"
    t.string   "office_number"
    t.string   "office_mailing_address"
    t.integer  "role"
    t.string   "slug"
  end

  add_index "merchants", ["email"], name: "index_merchants_on_email", unique: true
  add_index "merchants", ["reset_password_token"], name: "index_merchants_on_reset_password_token", unique: true
  add_index "merchants", ["slug"], name: "index_merchants_on_slug", unique: true

  create_table "online_retail_dish_items", force: :cascade do |t|
    t.integer  "online_retail_id"
    t.integer  "online_retail_menu_item_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "online_retail_menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "online_retail_service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "online_retail_work_types", force: :cascade do |t|
    t.integer  "online_retail_service_type_id"
    t.integer  "online_retail_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "supplier_id"
    t.integer  "raw_food_id"
  end

  create_table "online_retails", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "website_online_ordering_page"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.string   "self_collection_address"
    t.text     "question_1"
    t.datetime "halal_expiry"
    t.datetime "expiry_date"
    t.boolean  "draft",                         default: true
    t.boolean  "verified",                      default: false
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "menu_id"
    t.integer  "verifying_document_id"
    t.integer  "delivery_location_id"
    t.integer  "ordering_method_id"
    t.integer  "menu_item_id"
    t.integer  "online_retail_service_type_id"
    t.text     "self_collect_location"
    t.integer  "product_category_id"
    t.integer  "product_qualifying_type_id"
    t.string   "slug"
    t.integer  "online_retail_menu_item_id"
  end

  add_index "online_retails", ["delivery_location_id"], name: "index_online_retails_on_delivery_location_id"
  add_index "online_retails", ["listing_id"], name: "index_online_retails_on_listing_id"
  add_index "online_retails", ["menu_item_id"], name: "index_online_retails_on_menu_item_id"
  add_index "online_retails", ["merchant_id"], name: "index_online_retails_on_merchant_id"
  add_index "online_retails", ["online_retail_menu_item_id"], name: "index_online_retails_on_online_retail_menu_item_id"
  add_index "online_retails", ["online_retail_service_type_id"], name: "index_online_retails_on_online_retail_service_type_id"
  add_index "online_retails", ["ordering_method_id"], name: "index_online_retails_on_ordering_method_id"
  add_index "online_retails", ["product_category_id"], name: "index_online_retails_on_product_category_id"
  add_index "online_retails", ["product_qualifying_type_id"], name: "index_online_retails_on_product_qualifying_type_id"
  add_index "online_retails", ["qualifying_type_id"], name: "index_online_retails_on_qualifying_type_id"
  add_index "online_retails", ["reward_id"], name: "index_online_retails_on_reward_id"
  add_index "online_retails", ["slug"], name: "index_online_retails_on_slug", unique: true

  create_table "opening_hours", force: :cascade do |t|
    t.datetime "open"
    t.datetime "close"
    t.integer  "place_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "day_id"
    t.integer  "baker_id"
    t.integer  "supplier_id"
    t.integer  "caterer_id"
    t.integer  "food_delivery_id"
    t.integer  "raw_food_id"
    t.integer  "homy_id"
  end

  add_index "opening_hours", ["baker_id"], name: "index_opening_hours_on_baker_id"
  add_index "opening_hours", ["caterer_id"], name: "index_opening_hours_on_caterer_id"
  add_index "opening_hours", ["day_id"], name: "index_opening_hours_on_day_id"
  add_index "opening_hours", ["food_delivery_id"], name: "index_opening_hours_on_food_delivery_id"
  add_index "opening_hours", ["homy_id"], name: "index_opening_hours_on_homy_id"
  add_index "opening_hours", ["place_id"], name: "index_opening_hours_on_place_id"
  add_index "opening_hours", ["raw_food_id"], name: "index_opening_hours_on_raw_food_id"
  add_index "opening_hours", ["supplier_id"], name: "index_opening_hours_on_supplier_id"

  create_table "ordering_methods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "place_types", force: :cascade do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "places", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_email"
    t.string   "general_outlet_contact_number"
    t.string   "operating_address"
    t.string   "website"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.string   "link_to_online_ordering_page"
    t.string   "link_to_online_reservation_page"
    t.text     "question_1"
    t.text     "question_2"
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "draft",                           default: true
    t.boolean  "verified",                        default: false
    t.datetime "halal_expiry"
    t.datetime "expiry_date"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "opening_hour_id"
    t.integer  "qualifying_type_id"
    t.integer  "location_id"
    t.integer  "place_type_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "feature_id"
    t.integer  "dining_type_id"
    t.integer  "menu_item_id"
    t.integer  "menu_id"
    t.text     "on_the_menu"
    t.integer  "verifying_document_id"
    t.string   "slug"
    t.text     "musollah_nearby"
  end

  add_index "places", ["dining_type_id"], name: "index_places_on_dining_type_id"
  add_index "places", ["feature_id"], name: "index_places_on_feature_id"
  add_index "places", ["listing_id"], name: "index_places_on_listing_id"
  add_index "places", ["location_id"], name: "index_places_on_location_id"
  add_index "places", ["menu_item_id"], name: "index_places_on_menu_item_id"
  add_index "places", ["merchant_id"], name: "index_places_on_merchant_id"
  add_index "places", ["place_type_id"], name: "index_places_on_place_type_id"
  add_index "places", ["qualifying_type_id"], name: "index_places_on_qualifying_type_id"
  add_index "places", ["reward_id"], name: "index_places_on_reward_id"
  add_index "places", ["slug"], name: "index_places_on_slug", unique: true

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_qualifying_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "halal_summary"
  end

  create_table "product_types", force: :cascade do |t|
    t.integer  "product_category_id"
    t.integer  "online_retail_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "supplier_id"
  end

  create_table "qualifying_types", force: :cascade do |t|
    t.string   "name"
    t.text     "halal_summary"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "raw_food_dish_items", force: :cascade do |t|
    t.integer  "raw_food_id"
    t.integer  "raw_food_menu_item_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "raw_food_menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "raw_food_product_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "raw_food_product_types", force: :cascade do |t|
    t.integer  "raw_food_product_category_id"
    t.integer  "raw_food_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "raw_foods", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "website_online_ordering_page"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.string   "self_collection_address"
    t.text     "question_1"
    t.datetime "expiry_date"
    t.datetime "halal_expiry"
    t.boolean  "draft",                         default: true
    t.boolean  "verified",                      default: false
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "opening_hour_id"
    t.integer  "menu_id"
    t.integer  "verifying_document_id"
    t.integer  "delivery_location_id"
    t.integer  "ordering_method_id"
    t.integer  "online_retail_service_type_id"
    t.integer  "raw_food_product_category_id"
    t.integer  "product_qualifying_type_id"
    t.string   "slug"
    t.integer  "raw_food_menu_item_id"
  end

  add_index "raw_foods", ["delivery_location_id"], name: "index_raw_foods_on_delivery_location_id"
  add_index "raw_foods", ["listing_id"], name: "index_raw_foods_on_listing_id"
  add_index "raw_foods", ["merchant_id"], name: "index_raw_foods_on_merchant_id"
  add_index "raw_foods", ["online_retail_service_type_id"], name: "index_raw_foods_on_online_retail_service_type_id"
  add_index "raw_foods", ["ordering_method_id"], name: "index_raw_foods_on_ordering_method_id"
  add_index "raw_foods", ["product_qualifying_type_id"], name: "index_raw_foods_on_product_qualifying_type_id"
  add_index "raw_foods", ["qualifying_type_id"], name: "index_raw_foods_on_qualifying_type_id"
  add_index "raw_foods", ["raw_food_menu_item_id"], name: "index_raw_foods_on_raw_food_menu_item_id"
  add_index "raw_foods", ["raw_food_product_category_id"], name: "index_raw_foods_on_raw_food_product_category_id"
  add_index "raw_foods", ["reward_id"], name: "index_raw_foods_on_reward_id"
  add_index "raw_foods", ["slug"], name: "index_raw_foods_on_slug", unique: true

  create_table "rewards", force: :cascade do |t|
    t.text     "terms"
    t.integer  "discount_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "place_id"
    t.integer  "homy_id"
    t.integer  "food_delivery_id"
    t.integer  "caterer_id"
    t.integer  "online_retail_id"
    t.integer  "raw_food_id"
    t.integer  "supplier_id"
    t.integer  "baker_id"
    t.string   "friends_code"
  end

  add_index "rewards", ["discount_id"], name: "index_rewards_on_discount_id"

  create_table "shipping_locations", force: :cascade do |t|
    t.integer  "delivery_location_id"
    t.integer  "homy_id"
    t.integer  "online_retail_id"
    t.integer  "food_delivery_id"
    t.integer  "supplier_id"
    t.integer  "raw_food_id"
    t.integer  "baker_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "shipping_service_types", force: :cascade do |t|
    t.integer  "delivery_service_type_id"
    t.integer  "food_delivery_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "supplier_dish_items", force: :cascade do |t|
    t.integer  "supplier_id"
    t.integer  "supplier_menu_item_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "supplier_menu_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "website_online_ordering_page"
    t.string   "facebook_page"
    t.string   "instagram_handle"
    t.string   "self_collection_address"
    t.text     "question_1"
    t.datetime "expiry_date"
    t.datetime "halal_expiry"
    t.boolean  "draft",                         default: true
    t.boolean  "verified",                      default: false
    t.integer  "merchant_id"
    t.integer  "listing_id"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.integer  "reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "opening_hour_id"
    t.integer  "menu_id"
    t.integer  "verifying_document_id"
    t.integer  "delivery_location_id"
    t.integer  "ordering_method_id"
    t.integer  "product_category_id"
    t.integer  "online_retail_service_type_id"
    t.integer  "product_qualifying_type_id"
    t.string   "slug"
    t.integer  "supplier_menu_item_id"
  end

  add_index "suppliers", ["delivery_location_id"], name: "index_suppliers_on_delivery_location_id"
  add_index "suppliers", ["listing_id"], name: "index_suppliers_on_listing_id"
  add_index "suppliers", ["merchant_id"], name: "index_suppliers_on_merchant_id"
  add_index "suppliers", ["online_retail_service_type_id"], name: "index_suppliers_on_online_retail_service_type_id"
  add_index "suppliers", ["ordering_method_id"], name: "index_suppliers_on_ordering_method_id"
  add_index "suppliers", ["product_category_id"], name: "index_suppliers_on_product_category_id"
  add_index "suppliers", ["product_qualifying_type_id"], name: "index_suppliers_on_product_qualifying_type_id"
  add_index "suppliers", ["qualifying_type_id"], name: "index_suppliers_on_qualifying_type_id"
  add_index "suppliers", ["reward_id"], name: "index_suppliers_on_reward_id"
  add_index "suppliers", ["slug"], name: "index_suppliers_on_slug", unique: true
  add_index "suppliers", ["supplier_menu_item_id"], name: "index_suppliers_on_supplier_menu_item_id"

  create_table "verifying_documents", force: :cascade do |t|
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.integer  "place_id"
    t.integer  "food_delivery_id"
    t.integer  "homy_id"
    t.integer  "caterer_id"
    t.integer  "online_retail_id"
    t.integer  "supplier_id"
    t.integer  "raw_food_id"
    t.integer  "baker_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "verifying_documents", ["baker_id"], name: "index_verifying_documents_on_baker_id"
  add_index "verifying_documents", ["caterer_id"], name: "index_verifying_documents_on_caterer_id"
  add_index "verifying_documents", ["food_delivery_id"], name: "index_verifying_documents_on_food_delivery_id"
  add_index "verifying_documents", ["homy_id"], name: "index_verifying_documents_on_homy_id"
  add_index "verifying_documents", ["online_retail_id"], name: "index_verifying_documents_on_online_retail_id"
  add_index "verifying_documents", ["place_id"], name: "index_verifying_documents_on_place_id"
  add_index "verifying_documents", ["raw_food_id"], name: "index_verifying_documents_on_raw_food_id"
  add_index "verifying_documents", ["supplier_id"], name: "index_verifying_documents_on_supplier_id"

end
