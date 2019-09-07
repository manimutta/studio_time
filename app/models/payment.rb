class Payment < ApplicationRecord
  belongs_to :booking

  validates :payment_details, presence: :true
  validates :status, inclusion: { in: %w(success failure) }
end
