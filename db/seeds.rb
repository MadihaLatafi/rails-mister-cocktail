# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
require 'json'
require 'open-uri'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
unparsed_ingredients = open(url).read
ingredients = JSON.parse(unparsed_ingredients)["drinks"]
ingredients.each do |hash1|
  Ingredient.create(name: hash1["strIngredient1"])
end

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Caipirina")
Cocktail.create(name: "Tequila Sunrise")
Cocktail.create(name: "Sex on the beach")
