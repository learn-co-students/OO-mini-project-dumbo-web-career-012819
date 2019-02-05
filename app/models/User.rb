class User
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select { |recipe| recipe.user == self  }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select { |allergen| allergen.user == self  }
  end

  def top_three_recipes
    self.recipes.sort_by {|recipe| recipe.rating }.uniq.pop(3)
  end

  def most_recent_recipe
    self.recipes.sort_by {|recipe| recipe.date }.pop(1)
  end

  def safe_recipes
    allergen_ings = self.allergens.map { |allergen| allergen.ingredient  }
    RecipeIngredient.all.select{|recipe| recipe if !allergen_ings.include?(recipe.ingredient) }
  end

end
