class Story < ApplicationRecord
  mount_uploader :image, ImageUploader
  attribute :published_at, :datetime, default: -> { Time.now }
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :author

  validates :title, presence: true,
                    length: { minimum: 5 }

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

  def normalize_friendly_id(text)
    text.to_slug.transliterate(:russian).normalize.to_s
  end

  def prev
    Story.where("published_at > ?", published_at).order(published_at: :asc).limit(1).first
  end

  def next
    Story.where("published_at < ?", published_at).order(published_at: :desc).limit(1).first
  end
end
