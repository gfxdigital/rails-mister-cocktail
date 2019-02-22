class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # validates :amount, presence: true
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
