class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url
      t.references :studio, foreign_key: true
      t.string :dimensions

      t.timestamps
    end
  end
end
