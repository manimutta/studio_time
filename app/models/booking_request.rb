class BookingRequest < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  validates :start_time, :end_time, :booking_date, :actual_amount, :final_amount, presence: :true
end
