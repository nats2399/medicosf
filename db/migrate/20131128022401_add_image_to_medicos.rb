class AddImageToMedicos < ActiveRecord::Migration
  def self.up
  	add_column :medicos, :imagen_file_name, :string
  	add_column :medicos, :imagen_content_type, :string
  	add_column :medicos, :imagen_file_size, :integer
  	add_column :medicos, :imagen_updated_at, :datetime
  end

  def self.down
  	remove_column :medicos, :imagen_file_name, :string
  	remove_column :medicos, :imagen_content_type, :string
  	remove_column :medicos, :imagen_file_size, :integer
  	remove_column :medicos, :imagen_updated_at, :datetime

  end
end
