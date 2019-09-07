class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  # includes success and failure payments.
  has_many :payments


  validates :start_time, :end_time, :booking_date, :actual_amount, :final_amount, presence: :true
end
