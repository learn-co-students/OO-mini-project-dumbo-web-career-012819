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

  def recipe_cards    # Gives acces to recipe_card instances that correspond to user
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users   # Uses the recipe_cards helper method above to display instances of recipes for the user that asks.
    recipe_cards.collect do |card|
      card.user
    end
  end

  def user_count
    users.length
  end

  def self.most_popular
    most_pop = nil
    highest_num = 0
    self.all.each do |recipe|
      if recipe.user_count > highest_num
        highest_num = recipe.user_count
        most_pop = recipe
      end
    end
    most_pop
  end

  def ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end.collect do |ri|
      ri.ingredient
    end
  end

  def allergens
    Allergen.all.select do |allergen|
      ingredients.include?(allergen.ingredient)
    end.collect do |allergen|
      allergen.ingredient
    end.uniq
  end

  def add_ingredients(new_ingredients)
    new_ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end
  
end
