class SocialNetworkingLink < ApplicationRecord
  belongs_to :studio

  validates :networking_site, :url, presence: :true
  validates :networking_site, inclusion: { in: %w(facebook twitter linkedin instagram) }
end
