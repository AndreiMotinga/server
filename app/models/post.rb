class Post < ApplicationRecord
  has_many :post_tags
  has_many :tags, through: :post_tags

  has_attached_file :image, styles: { thumbnail: "310x310>",
                                      medium: "600x600>",
                                      large: "900x600>" }
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}

  # scope :desc, -> { order(created_at: :desc) }
  #
  # def previous
  #   Post.desc.where("created_at < ?", created_at).take(4)
  # end
end
