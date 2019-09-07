class PaymentMethod < ApplicationRecord
  belongs_to :user

  validates :payment_information, presence: :true
  validates :payment_type, inclusion: { in: %w(credit debit ach check cash) }
end
