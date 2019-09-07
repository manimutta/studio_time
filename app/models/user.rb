class User < ApplicationRecord
  has_many :studios
  has_many :booking_requests
  has_many :bookings
  has_many :reviews
  # different payment methods like credit card, debit card, ach, check etc.
  has_many :payment_methods

  validates :name, :email, presence: :true
  # Validates email format
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
