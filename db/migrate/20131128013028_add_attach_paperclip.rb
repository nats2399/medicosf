class AddAttachPaperclip < ActiveRecord::Migration
  	def self.up
		add_column :medicos, :attach_file_name,    :string
 		add_column :medicos, :attach_content_type, :string
 		add_column :medicos, :attach_file_size,    :integer
 		add_column :medicos, :attach_updated_at,   :datetime
	end
 
	def self.down
		remove_column :medicos, :attach_file_name
		remove_column :medicos, :attach_content_type
		remove_column :medicos, :attach_file_size
		remove_column :medicos, :attach_updated_at
	end
end
