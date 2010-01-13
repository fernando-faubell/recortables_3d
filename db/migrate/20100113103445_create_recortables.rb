class CreateRecortables < ActiveRecord::Migration
  def self.up
    create_table :recortables do |t|
      t.integer :numero_gajos
      t.integer :numero_u
      t.integer :numero_v
      t.string :textura
      t.decimal :ancho_textura_x
      t.decimal :ancho_textura_y
      t.decimal :desplazamiento_textura_x
      t.decimal :desplazamiento_textura_y
      t.decimal :rojo
      t.decimal :verde
      t.decimal :azul
      t.integer :repite_horizontal
      t.integer :repite_vertical
      t.decimal :malla_rojo
      t.decimal :malla_verde
      t.decimal :malla_azul
      t.decimal :malla_tamanyo
      t.integer :fin
      t.timestamps
    end
  end
  
  def self.down
    drop_table :recortables
  end
end
