class Recipe
  attr_accessor :name
  attr_reader :ingredients
  @@all = []

  def initialize(name, ingredients)
    @name = name
    @ingredients = ingredients

    @@all << self
  end

  def self.most_popular
    run = RecipeCard.all.map do |n|
      n.recipe.name

    end
    v = run.sort_by { |n|
      run.count(n)

    }
    v.pop
  end

  def users
    RecipeCard.all.select do |name|
      if name.recipe == self
        return name.user
      end

    end

  end

  def ingredient
    Ingredient.all.select do |recipe|
      recipe == self.ingredients
    end

  end

  def allergens
    Allergen.all.select do |allergy|
      allergy.name == self.ingredients
    end
  end


  def add_ingredients(ingredient)
    RecipeIngredient.new(ingredient,self)
  end

  def self.all
    @@all
  end
end
