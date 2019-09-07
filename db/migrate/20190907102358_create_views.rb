class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.references :studio, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
