class Studio < ApplicationRecord
  belongs_to :user
  has_many :equipments
  has_many :booking_requests
  has_many :bookings
  has_many :images
  has_many :reviews
  has_many :audio_samples
  has_many :views
  has_many :social_networking_links

  validates :name, :email, :price_per_hour, :working_hours, :location, :billing_currency, presence: :true
  validates :studio_type, inclusion: { in: %w(home podcast topline  midlevel rehearsel) }
end
