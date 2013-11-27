class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nombres
      t.string :apellidos
      t.string :celular
      t.string :email
      t.text :curriculum
      t.string :reconocimiento
      t.string :imagen
      t.integer :especialidad_id

      t.timestamps
    end
  end
end
