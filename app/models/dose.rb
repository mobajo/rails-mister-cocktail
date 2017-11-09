class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # has_and_belongs_to_many :cocktail, -> { group "ingredients" }

  # validates :ingredient, uniqueness: true, presence: true
  # validates :cocktail, uniqueness: true, presence: true
  validates :ingredient_id, uniqueness: true
  validates :cocktail_id, uniqueness: true
  validates :cocktail_id, uniqueness: { scope: :ingredient }
end
