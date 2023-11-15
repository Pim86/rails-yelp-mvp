class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # restaurant.reviews

  CATEGORIES = %w[chinese italian japanese french belgian]

  validates :category, inclusion: {
    in: CATEGORIES,
    message: '%<value>s is not a valid category'
  }

  validates :name, :address, presence: true
end
