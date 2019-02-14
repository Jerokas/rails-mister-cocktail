class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :ingredients
  validates :name, uniqueness: true, presence: true
end
