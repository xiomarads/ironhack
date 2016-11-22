# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sandwich A = Sandwich.create!(name: "Croqueta Preparada", bread_type: "Puerto Rican Bread")

ingredientA = Ingredient.create!(name: "Croquetas", calories: 175)
ingredientB = Ingredient.create!(name: "swiss cheese", calories: 50)
ingredientC = Ingredient.create!(name: "ham", calories: 100)

SandwichIngredient.create!(sandwich_id: SandiwchA.id, ingredient_id: ingredientA.id)
SandwichIngredient.create!(sandwich_id: SandiwchA.id, ingredient_id: ingredientB.id)
SandwichIngredient.create!(sandwich_id: SandiwchA.id, ingredient_id: ingredientC.id)
