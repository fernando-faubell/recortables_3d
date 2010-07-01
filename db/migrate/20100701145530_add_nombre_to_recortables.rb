class AddNombreToRecortables < ActiveRecord::Migration
  def self.up
    add_column :recortables, :nombre, :string, :limit => 24
  end

  def self.down
    remove_column :recortables, :nombre
  end
end
