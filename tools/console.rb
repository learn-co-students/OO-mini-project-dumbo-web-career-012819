require_relative '../config/environment.rb'

user1 = User.new("Cristian")
user2 = User.new("Mazen")
user3 = User.new("Elmo")
user4 = User.new("Barney")

recipe1 = Recipe.new("Chocolate cake")
recipe2 = Recipe.new("Cheese Burger")
recipe3 = Recipe.new("Fries")
recipe4 = Recipe.new("Spaghetti")

rc1 = RecipeCard.new(user1, recipe1, "0705", 5)
rc2 = RecipeCard.new(user1, recipe2, "0305", 3)
rc3 = RecipeCard.new(user1, recipe3, "0505", 6)
rc4 = RecipeCard.new(user1, recipe4, "0405", 9)

ing1 = Ingredient.new("Chocolate")
ing2 = Ingredient.new("Cheese")
ing3 = Ingredient.new("Salt")
ing4 = Ingredient.new("Eggs")

ri1 = RecipeIngredient.new(recipe1, ing1)
ri2 = RecipeIngredient.new(recipe2, ing2)
ri3 = RecipeIngredient.new(recipe3, ing3)
ri4 = RecipeIngredient.new(recipe4, ing4)


allergen1 = Allergen.new(user1, ing2)
allergen2 = Allergen.new(user2, ing2)
allergen3 = Allergen.new(user3, ing2)
allergen4 = Allergen.new(user4, ing1)
allergen5 = Allergen.new(user4, ing2)
allergen6 = Allergen.new(user4, ing3)




binding.pry
"Byeeeeee!"
