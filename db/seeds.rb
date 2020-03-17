# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
require 'json'
puts "creating"
serialized_cocktails_name = open('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita').read
drinks = JSON.parse(serialized_cocktails_name)

serialized_cocktails = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
drinks = JSON.parse(serialized_cocktails)

drinks['drinks'].each do |obj|
  Ingredient.create!(name: obj['strIngredient1'])
end

ingredients = []
drinks['drinks'].map do |drink|
  ingredients << drink
end

# 10.times do
#   a = Ingredient.create(name: ingredient.sample(1)['strIngredient1'])
#       Ingredient.create(name: ingredient.sample(1)['strIngredient1'])
#   b = Cocktail.create(name: Faker::Food.dish)
#   Dose.create(description: Faker::Food.description, ingredient: a, cocktail: b)
# end



# drinks['drinks'].each do |drink|
#   a = Ingredient.create(name: drink['strIngredient1'])
#   b = Cocktail.create(name: Faker::Food.dish)
#   Dose.create(description: Faker::Food.description, ingredient: a, cocktail: b)
# end
# each with index do
# sample (number) create cockatail

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# Cocktail.create(name: "lemon")
# Cocktail.create(name: "apple")
# Cocktail.create(name: "grape")

# Dose.create(description: "aaa", ingredient: Ingredient.first, cocktail: Cocktail.first)


puts"create ingredients"
