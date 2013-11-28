class AddImagenToMedicos < ActiveRecord::Migration
  def change
  end

  def self.up
    add_attachment :medicos, :imagen
  end

  def self.down
    remove_attachment :medicos, :imagen
  end

end
