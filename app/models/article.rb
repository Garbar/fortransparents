class Article < ApplicationRecord
  attribute :published_at, :datetime, default: -> { Time.now }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true,
                    length: { minimum: 5 }
end
