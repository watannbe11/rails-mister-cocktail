class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :doses
  # we don't ned it because we don't use ingredient.cocktails
  # has_many :cocktails, through: :doses
end
