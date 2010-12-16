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

ActiveRecord::Schema.define(:version => 20101208190500) do

  create_table "imagenes", :force => true do |t|
    t.string   "nombre"
    t.integer  "recortable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "modelos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recortables", :force => true do |t|
    t.integer  "modelo_id"
    t.string   "complejidad"
    t.string   "color_fondo"
    t.string   "color_aristas"
    t.string   "grosor_aristas"
    t.string   "textura"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre",               :limit => 24
    t.string   "textura_file_name"
    t.string   "textura_content_type"
    t.integer  "textura_file_size"
    t.datetime "textura_updated_at"
    t.decimal  "tamanyo_x",                          :precision => 9, :scale => 2
    t.decimal  "tamanyo_y",                          :precision => 9, :scale => 2
    t.decimal  "posicion_x",                         :precision => 9, :scale => 2
    t.decimal  "posicion_y",                         :precision => 9, :scale => 2
    t.boolean  "repetir_x"
    t.boolean  "repetir_y"
  end

end
