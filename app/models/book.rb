class Book < ApplicationRecord
  has_many :reviews
  mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }
end
