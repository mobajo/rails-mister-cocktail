puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts 'Finished reating ingredients...'

