class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :studio, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.date :booking_date
      t.float :actual_amount
      t.string :coupon
      t.float :final_amount

      t.timestamps
    end
  end
end
