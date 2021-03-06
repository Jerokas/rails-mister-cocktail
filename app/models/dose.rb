class Dose < ApplicationRecord
  belongs_to :cocktail, dependent: :destroy
  belongs_to :ingredient, dependent: :destroy
  validates :description, presence: true
  validates_uniqueness_of :cocktail, scope: [:ingredient]
end
