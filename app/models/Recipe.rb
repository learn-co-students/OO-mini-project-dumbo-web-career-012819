class Recipe
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    recipe_hash = Hash.new(0)
    recipe_arr = RecipeCard.all.map { |rc| rc.recipe}

    recipe_arr.each do |v|
      recipe_hash[v] += 1
    end

    (recipe_hash.max_by { |k, v| v } )[0]
  end

  def recipe_cards
    RecipeCard.all.select { |rc| rc.recipe == self }
  end

  def recipe_ingredients
    RecipeIngredient.all.select {|ri| ri.recipe == self}
  end

  def users
    recipe_cards.map { |rc| rc.user }
  end

  def ingredients
    recipe_ingredients.map { |ri| ri.ingredient }
  end

  # returns array of ingredients
  def allergens
    allergen_arr = []
    self.ingredients.each do |ingredient|
      Allergen.all.each do |allergen|
        allergen_arr << ingredient if allergen.ingredient == ingredient
      end
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(recipe: self, ingredient: ingredient)
    end
  end

end
