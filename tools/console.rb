require_relative '../config/environment.rb'

seann = User.new("Seann")
angelo = User.new("Angelo")
nate = User.new("Nate")

recipe1 = Recipe.new("PBJ")
recipe2 = Recipe.new("Pasta")
recipe3 = Recipe.new("Sushi")
recipe4 = Recipe.new("Crab Rangoon")

peanut_butter = Ingredient.new("Peanut Butter")
spaghetti = Ingredient.new("Spaghetti")
seaweed = Ingredient.new("Seaweed")
rice = Ingredient.new("Rice")
soy_sauce = Ingredient.new("Soy Sauce")
jelly = Ingredient.new("Jelly")

recipe_card1 = RecipeCard.new("03/07", 4, seann, recipe2)
recipe_card2 = RecipeCard.new("01/10", 3, angelo, recipe3)
recipe_card3 = RecipeCard.new("12/12", 5, nate, recipe1)
recipe_card4 = RecipeCard.new("01/01", 1, angelo, recipe2)
recipe_card5 = RecipeCard.new("99/2", 3, nate, recipe4)
recipe_card6 = RecipeCard.new("102938", 7, angelo, recipe1)

peanut_allergy = Allergen.new(nate, peanut_butter)
peanut_allergy2 = Allergen.new(angelo, peanut_butter)
peanut_allergy3 = Allergen.new(seann, peanut_butter)
gluten_allergy = Allergen.new(angelo, spaghetti)
seaweed_allergy = Allergen.new(seann, seaweed)
seaweed_allergy2 = Allergen.new(nate, seaweed)
seaweed_allergy3 = Allergen.new(angelo, seaweed)
soy_sauce_allergy = Allergen.new(nate, soy_sauce)

recipe_ingredient1 = RecipeIngredient.new(peanut_butter, recipe1)
recipe_ingredient2 = RecipeIngredient.new(spaghetti, recipe2)
recipe_ingredient3 = RecipeIngredient.new(seaweed, recipe3)
recipe_ingredient4 = RecipeIngredient.new(jelly, recipe1)
recipe_ingredient5 = RecipeIngredient.new(soy_sauce, recipe3)
recipe_ingredient6 = RecipeIngredient.new(rice, recipe3)


binding.pry
