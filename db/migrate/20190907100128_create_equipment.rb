class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.references :studio, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
