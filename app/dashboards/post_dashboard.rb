require "administrate/base_dashboard"
# Dashboard Post configuration
class PostDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    image: Field::Image,
    id: Field::Number,
    title: Field::String,
    author: Field::String,
    body: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :author,
    :body,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :image,
    :title,
    :author,
    :body,
  ].freeze
end
