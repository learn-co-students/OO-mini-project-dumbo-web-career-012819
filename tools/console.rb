require_relative '../config/environment.rb'


tracy = User.new("Tracy")
nate = User.new("Nate")
jj = User.new("JJ")

pasta = Recipe.new("pasta")
soup = Recipe.new("soup")
panini = Recipe.new("panini")
curry = Recipe.new("curry")


rc1 = RecipeCard.new(19620202, 5, nate, pasta)
rc2 = RecipeCard.new(19180728, 2, jj, panini)
rc3 = RecipeCard.new(19390901, 3, tracy, pasta)
rc4 = RecipeCard.new(19870301, 3, nate, soup)
rc5 = RecipeCard.new(19991231, 1, nate, panini)
rc6 = RecipeCard.new(20051031, 4, nate, pasta)
rc7 = RecipeCard.new(20190205, 5, tracy, curry)

tomato = Ingredient.new("tomato")
cheese = Ingredient.new("cheese")
choco = Ingredient.new("chocolate")
milk = Ingredient.new("milk")
noodle = Ingredient.new("noodle")
veggie = Ingredient.new("vegetable")
walnut = Ingredient.new("walnut")

dairy = Allergen.new(cheese, jj)
gluten = Allergen.new(noodle, jj)
fruit = Allergen.new(tomato, nate)
toma = Allergen.new(tomato, tracy)
nuts = Allergen.new(walnut, tracy)

ri1 = RecipeIngredient.new(pasta, tomato)
ri2 = RecipeIngredient.new(pasta, noodle)
ri3 = RecipeIngredient.new(pasta, cheese)
ri4 = RecipeIngredient.new(curry, choco)
ri5 = RecipeIngredient.new(curry, milk)
ri6 = RecipeIngredient.new(panini, cheese)
ri7 = RecipeIngredient.new(panini, veggie)
ri8 = RecipeIngredient.new(soup, tomato)
ri9 = RecipeIngredient.new(soup, veggie)
ri10 = RecipeIngredient.new(pasta, walnut)


binding.pry
