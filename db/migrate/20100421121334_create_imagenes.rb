class CreateImagenes < ActiveRecord::Migration
  def self.up
    create_table :imagenes do |t|
      t.string :nombre
      t.integer :recortable_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :imagenes
  end
end
