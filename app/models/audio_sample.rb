class AudioSample < ApplicationRecord
  belongs_to :studio

  validates :url, :studio_id, presence: :true
end
