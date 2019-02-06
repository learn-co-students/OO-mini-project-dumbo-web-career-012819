require_relative '../config/environment.rb'

user1 = User.new('Myung')
user2 = User.new('Sharon')
user3 = User.new('Greg')
user4 = User.new('Amos')
user5 = User.new('Mike')

recipe1 = Recipe.new('strawberry cake')
recipe2 = Recipe.new('cheese cake')
recipe3 = Recipe.new('banana cake')
recipe4 = Recipe.new('pudding cake')

recipecard1 = RecipeCard.new('s-c recipe', '06-09-1995', 10, recipe1, user1)
recipecard2 = RecipeCard.new('c-c recipe', '04-04-1992', 8, recipe2, user2)
recipecard3 = RecipeCard.new('b-c recipe', '02-05-2019', 4, recipe3, user3)
recipecard4 = RecipeCard.new('p-c recipe', '02-06-2019', 5, recipe4, user1)

ingredient1 = Ingredient.new('flour')
ingredient2 = Ingredient.new('sugar')
ingredient3 = Ingredient.new('egg')

recipeingredient1 = RecipeIngredient.new('s-c ingredients', ingredient1, recipe1)
recipeingredient2 = RecipeIngredient.new('c-c ingredients', ingredient2, recipe2)
recipeingredient3 = RecipeIngredient.new('b-c ingredients', ingredient3, recipe3)
recipeingredient4 = RecipeIngredient.new('p-c ingredients', ingredient2, recipe4)

allergy1 = Allergen.new('strawberry allergy', ingredient1, user1)
allergy2 = Allergen.new('lactose allergy', ingredient2, user2)
allergy3 = Allergen.new('potassium allergy', ingredient3, user4)
allergy4 = Allergen.new('potassium allergy', ingredient3, user5)
allergy5 = Allergen.new('potassium allergy', ingredient3, user3)

binding.pry
0
