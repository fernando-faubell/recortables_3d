class CreateRecortables < ActiveRecord::Migration
  def self.up
    create_table :recortables do |t|

      t.integer :modelo_id
      t.string :complejidad
      t.string :color_fondo
      t.string :color_aristas
      t.string :grosor_aristas
      t.string :textura    #TODO: Será un enlace a un recurso tipo fichero.

      t.timestamps
    end
  end
  
  def self.down
    drop_table :recortables
  end
end
