class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end.map do |recipecard|
      recipecard.recipe
    end
  end

  def allergens
    Allergen.all.select do |allergy|
      allergy.user == self
    end.map do |allergy|
      allergy.ingredient
    end
  end

  def add_recipe_card(recipe, date, rating)
    # new_recipe = Recipe.new('oreo cake')
    RecipeCard.new("#{recipe.name} recipe", date, rating, recipe, self)
  end

  def declare_allergen(ingredient)
    Allergen.new("#{ingredient.name} allergy", ingredient, self)
  end

  # - `User#top_three_recipes`
  # should return the top three highest rated recipes for this user.
  def top_three_recipes
    RecipeCard.all.sort do |x, y|
      x.rating <=> y.rating
    end
  end

end
