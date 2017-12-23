require "administrate/base_dashboard"

class AuthorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    slug: Field::String,
    avatar: Field::Carrierwave,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    articles: Field::HasMany,
    videos: Field::HasMany,
    stories: Field::HasMany
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :avatar,
    :slug
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  # SHOW_PAGE_ATTRIBUTES = [
  #   :id,
  #   :name,
  #   :description,
  #   :slug,
  #   :avatar,
  #   :created_at,
  #   :updated_at,
  # ].freeze
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :description,
    :slug,
    :avatar
  ].freeze

  # Overwrite this method to customize how authors are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(author)
  #   "Author ##{author.id}"
  # end
  def display_resource(author)
    author.name
  end
end
