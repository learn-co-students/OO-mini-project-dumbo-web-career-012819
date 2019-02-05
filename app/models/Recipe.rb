class Recipe
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    RecipeCard.all.sort_by {|recipe_card| RecipeCard.all.count(recipe_card)}.pop(1)
  end

  def recipes
    RecipeCard.all.select{|rc| rc.recipe == self}
  end

  def users
    recipes.map{|recipe| recipe.user}
  end

  def helper
    RecipeIngredient.all.select{|ri| ri.recipe == self}
  end

  def ingredients
    helper.map { |i| i.ingredient  }
    # recipes.map { |recipe| recipe.ingredient  }
  end

  def allergens
    Allergen.all.select { |e| self.ingredients.include?(e.ingredient)  }
  end

  def add_ingredients(arr)
    arr.map {|ing| RecipeIngredient.new(self, ing)}
  end
end
