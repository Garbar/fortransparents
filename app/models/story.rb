class Story < ApplicationRecord
  mount_uploader :image, ImageUploader
  attribute :published_at, :datetime, default: -> { Time.now }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true,
                    length: { minimum: 5 }

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end
end
