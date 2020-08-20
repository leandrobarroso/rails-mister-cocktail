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
puts "Cleaning database..."
Ingredient.destroy_all

puts 'Creating ingtredients from API...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized_file = open(url).read
ingredient_list = JSON.parse(serialized_file)
ingredient_list['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
puts 'Finished!'
