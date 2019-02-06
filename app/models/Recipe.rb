class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  #should return the user instances who have recipe cards with this recipe
  def users
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
   end.map do |recipecard|
     recipecard.user
   end
  end
  #should return all of the ingredients in this recipe

  def ingredients
    RecipeIngredient.all.select do |recipeingr|
      recipeingr.recipe == self
    end.map do |recipeingr|
      recipeingr.ingredient
   end
  end

  #should return all of the ingredients in this recipe that are allergens
  def allergens
    recipe_allergies = []

    Allergen.all.each do |allergy|
      if ingredients.include?(allergy.ingredient)
        recipe_allergies << allergy.ingredient
      end
    end
    recipe_allergies
  end

  #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  def add_ingredients(array_of_ingredients)
    array_of_ingredients.each do |ingredient|
      RecipeIngredient.new("#{self.name} ingredients", ingredient, self)
    end
  end

#should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  def self.most_popular
    Recipe.all.max_by do |recipe|
      recipe.users.count
    end
  end


end
