require_relative '../config/environment.rb'



bob = User.new("Bob")


sara = User.new("sara")

banana = Ingredient.new("banana")
carrot = Ingredient.new("Carrot")
cheese = Ingredient.new("Cheese")

potpie = Recipe.new("potpie", carrot)

cheesecake = Recipe.new("cheesecake", cheese)
b = Recipe.new("cheesecake", banana)


bob.add_recipe_card("Hotdog", potpie, "Feb 1th", 1)
bob.add_recipe_card("cheesecake", cheesecake, "Feb 2th", 4)
sara.add_recipe_card("cheesecake", cheesecake, "Feb 8th", 4)
bob.add_recipe_card("cheesecake", cheesecake, "Feb 3th", 2)
sara.add_recipe_card("Sara's Hotdog rendition ", potpie, "Feb 6th", 80)

cheesecake.add_ingredients(cheese)

sara.declare_allergen(cheese)
bob.declare_allergen(cheese)
bob.declare_allergen(carrot)
bob.declare_allergen(carrot)

binding.pry
0
