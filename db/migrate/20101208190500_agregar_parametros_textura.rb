class AgregarParametrosTextura < ActiveRecord::Migration
  def self.up
    change_table :recortables do |t|
      t.decimal :tamanyo_x, :precision => 9, :scale => 2
      t.decimal :tamanyo_y, :precision => 9, :scale => 2
      t.decimal :posicion_x, :precision => 9, :scale => 2
      t.decimal :posicion_y, :precision => 9, :scale => 2
      t.boolean :repetir_x
      t.boolean :repetir_y
    end
  end

  def self.down
    change_table :recortables do |t|
      t.remove :tamanyo_x
      t.remove :tamanyo_y
      t.remove :posicion_x
      t.remove :posicion_y
      t.remove :repetir_x
      t.remove :repetir_y
    end
  end
end
