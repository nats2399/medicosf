class CreateEspecialidads < ActiveRecord::Migration
  def change
    create_table :especialidads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
