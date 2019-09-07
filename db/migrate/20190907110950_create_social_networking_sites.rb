class CreateSocialNetworkingSites < ActiveRecord::Migration[5.2]
  def change
    create_table :social_networking_links do |t|
      t.references :studio, foreign_key: true
      t.string :networking_site
      t.string :url

      t.timestamps
    end
  end
end
