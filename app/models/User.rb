class User
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select { |rc| rc.user == self }
  end

  def recipes
    recipe_cards.map { |rc| rc.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date: date, recipe: recipe, rating: rating, user: self)
  end

  def top_three_recipes
    sorted = recipe_cards.sort_by { |rc| rc.rating }
    sorted.last(3).reverse
  end

  def most_recent_recipe
    sorted = recipe_cards.sort_by { |rc| rc.date }
    sorted.last.recipe
  end

  def allergens
    Allergen.all.select { |allergen| allergen.user == self }
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient: ingredient, user: self)
  end

end
