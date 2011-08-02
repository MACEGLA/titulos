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

ActiveRecord::Schema.define(:version => 20110802025020) do

  create_table "categorias", :force => true do |t|
    t.string   "nombre",     :limit => 150
    t.boolean  "disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nombre",     :limit => 150
    t.boolean  "disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editoriales", :force => true do |t|
    t.string   "codigo",     :limit => 2
    t.string   "nombre",     :limit => 100
    t.boolean  "disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editoriales", :force => true do |t|
    t.string   "codigo",     :limit => 2
    t.string   "nombre",     :limit => 100
    t.boolean  "disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", :force => true do |t|
    t.string   "codigo",       :limit => 15,  :null => false
    t.string   "nombre_largo", :limit => 250, :null => false
    t.string   "nombre_corto", :limit => 50,  :null => false
    t.boolean  "disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "editorial_id"
    t.integer  "categoria_id"
  end

  add_index "productos", ["codigo"], :name => "productos_ak_codigo", :unique => true

end
