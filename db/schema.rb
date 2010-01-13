# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100113103445) do

  create_table "recortables", :force => true do |t|
    t.integer  "numero_gajos"
    t.integer  "numero_u"
    t.integer  "numero_v"
    t.string   "textura"
    t.integer  "ancho_textura_x",          :limit => 10, :precision => 10, :scale => 0
    t.integer  "ancho_textura_y",          :limit => 10, :precision => 10, :scale => 0
    t.integer  "desplazamiento_textura_x", :limit => 10, :precision => 10, :scale => 0
    t.integer  "desplazamiento_textura_y", :limit => 10, :precision => 10, :scale => 0
    t.integer  "rojo",                     :limit => 10, :precision => 10, :scale => 0
    t.integer  "verde",                    :limit => 10, :precision => 10, :scale => 0
    t.integer  "azul",                     :limit => 10, :precision => 10, :scale => 0
    t.integer  "repite_horizontal"
    t.integer  "repite_vertical"
    t.integer  "malla_rojo",               :limit => 10, :precision => 10, :scale => 0
    t.integer  "malla_verde",              :limit => 10, :precision => 10, :scale => 0
    t.integer  "malla_azul",               :limit => 10, :precision => 10, :scale => 0
    t.integer  "malla_tamanyo",            :limit => 10, :precision => 10, :scale => 0
    t.integer  "fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
