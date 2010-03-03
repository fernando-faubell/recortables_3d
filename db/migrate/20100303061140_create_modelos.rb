class CreateModelos < ActiveRecord::Migration
  def self.up
    create_table :modelos do |t|
      t.string :nombre
      t.timestamps
    end
  end
  
  def self.down
    drop_table :modelos
  end
end
