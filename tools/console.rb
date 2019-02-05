require_relative '../config/environment.rb'

# binding.pry

#---------- Users -----------#
user1 = User.new("Siri")
user2 = User.new("Alexa")

#---------- Recipe ----------#
recipe1 = Recipe.new("Cheesecake")
recipe2 = Recipe.new("Poke Bowl")
recipe3 = Recipe.new("NY Bagel")
recipe4 = Recipe.new("Omelette")
recipe5 = Recipe.new("Pizza")



#---------- RecipeCards --------#
recipecard1 = RecipeCard.new(date: 20180101, recipe: recipe1, user: user1, rating: 5) #1st
recipecard2 = RecipeCard.new(date: 20180109, recipe: recipe1, user: user1, rating: 10) #2nd
recipecard3 = RecipeCard.new(date: 20400101, recipe: recipe3, user: user1, rating: 2) #4th
recipecard4 = RecipeCard.new(date: 20181122, recipe: recipe4, user: user1, rating: 9) #3rd

#---------- Ingredient --------#
ingredient1 = Ingredient.new("Milk")
ingredient2 = Ingredient.new("Salmon")
ingredient3 = Ingredient.new("Cream Cheese")
ingredient4 = Ingredient.new("Eggs")

#---------- RecipeIngredient --------#
recipeingredient1 = RecipeIngredient.new(recipe: recipe1, ingredient: ingredient1)
recipeingredient2 = RecipeIngredient.new(recipe: recipe2, ingredient: ingredient2)
recipeingredient3 = RecipeIngredient.new(recipe: recipe3, ingredient: ingredient3)
recipeingredient4 = RecipeIngredient.new(recipe: recipe4, ingredient: ingredient4)

#---------- Allergen --------#
allergen1 = Allergen.new(user:user1, ingredient:ingredient1)
allergen2 = Allergen.new(user:user1, ingredient:ingredient2)
allergen3 = Allergen.new(user:user2, ingredient:ingredient1)


# user1.add_recipe_card(recipe2, "Aug 1", 5.6)
# puts user1.top_three_recipes[3]
# user1.declare_allergen(ingredient4)
# puts Allergen.all
recipe1.add_ingredients([ingredient3, ingredient4])
binding.pry
# 0
