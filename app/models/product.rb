class Product < ApplicationRecord
  belongs_to :user
  validates :name, :description, :category, :price, presence: true
  has_many :orders
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
