class User
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name = name

    @@all << self

  end

  def recipes
    run = RecipeCard.all.select do |recipe|
      recipe.user == self
    end
    run.map do |r|
      r.recipe
    end

  end

  def add_recipe_card(title,recipe, date, rating)
    RecipeCard.new(title, self,recipe,date,rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient,self)
  end

  def allergens
    Allergen.all.select do |allergy|
      allergy.user == self
    end
  end

  def cookbook
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

  def top_three_recipes
    r = cookbook.map do |recipe|
      recipe.rating

    end
    v = r.sort { |a,b| b <=> a }
    v.first(3)
  end

  def most_recent_recipe
    cookbook.pop
  end

  def self.all
    @@all
  end


end
