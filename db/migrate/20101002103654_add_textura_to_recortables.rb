class AddTexturaToRecortables < ActiveRecord::Migration
  def self.up
      add_column :recortables, :textura_file_name,    :string
      add_column :recortables, :textura_content_type, :string
      add_column :recortables, :textura_file_size,    :integer
      add_column :recortables, :textura_updated_at,   :datetime
    end

    def self.down
      remove_column :recortables, :textura_file_name
      remove_column :recortables, :textura_content_type
      remove_column :recortables, :textura_file_size
      remove_column :recortables, :textura_updated_at
    end

end
