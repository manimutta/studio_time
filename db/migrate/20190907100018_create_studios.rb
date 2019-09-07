class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :email
      t.date :joining_date
      t.string :contact_number
      t.string :website_url
      t.string :location
      t.decimal :location_lat, precision: 10, scale: 6
      t.decimal :location_lang, precision: 10, scale: 6
      t.text :description
      t.integer :minimum_booking_time
      t.text :amenities
      t.string :working_hours
      t.float :price_per_hour
      t.string :billing_currency
      t.string :studio_type
      t.boolean :is_verfied
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
