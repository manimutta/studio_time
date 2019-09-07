class View < ApplicationRecord
  belongs_to :studio
  # User who has seen the studio.
  belongs_to :user

  validates :studio_id, presence: :true
end
