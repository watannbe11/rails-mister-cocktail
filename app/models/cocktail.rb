class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
# this malkes instance method therefor cocktail can reach to ingredient
# if i want to get rid of this ineed to write
# def ingredients
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
