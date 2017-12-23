class Author < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :articles
  has_many :stories
  has_many :videos

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

  def normalize_friendly_id(text)
    text.to_slug.transliterate(:russian).normalize.to_s
  end
end
