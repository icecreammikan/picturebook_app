class Book < ApplicationRecord
  validates :text,:title, presence: true
end
