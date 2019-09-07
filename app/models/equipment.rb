class Equipment < ApplicationRecord
  belongs_to :studio

  validates :name, :studio_id, presence: :true
end
