# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
rhum = Ingredient.create(name: "white rhum")

mojito = Cocktail.create!(name: "Mojito")

dose_one = Dose.new(description: "2 cubes of")
dose_one.ingredient = ice
dose_one.cocktail = mojito
dose_one.save!

Dose.create!({
  description: "muddle five",
  ingredient: mint,
  cocktail: mojito
})

Dose.create!({
  description: "2 oz",
  ingredient: rhum,
  cocktail: mojito
})










