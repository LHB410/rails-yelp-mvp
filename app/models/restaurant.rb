class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "Sorry that's not a valid category."}
end
