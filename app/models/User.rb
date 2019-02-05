require 'pry'

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

  def recipe_cards    # Gives acces to recipe_card instances that correspond to user
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def recipes   # Uses the recipe_cards helper method above to display instances of recipes for the user that asks.
    recipe_cards.collect do |card|
      card.recipe
    end
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def top_three_recipes
    top_three = recipe_cards.sort_by do |recipe|
      recipe.rating
    end
    top_three[-3..-1]
  end

  def most_recent_recipe
    recent_date = recipe_cards.sort_by do |recipe|
      recipe.date
    end
    recent_date[-1]
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end.collect do |allergen|
      allergen.ingredient
    end
  end

  def possible_helper_recipe
    # Put code here and change method name to an appropriate one
  end


  def safe_recipes # Still working on
    # Find recipes for Tracy
    # Find ingredients for each of her recipes
    # Check if an ingredient in one of her recipes is an allergen?
    # Allergens for Tracy:  1. Tomato & 2. Walnut
    # recipes.

    # safe = []
    # Recipe.all.each do |recipe|
    #   allergens.each do |allergen|
    #     if recipe.
    safe_recipe = Recipe.all
    safe_recipe.each do |recipe|
      allergens.each do |allergen|
        if recipe.ingredients.include?(allergen)
          safe_recipe.delete(recipe)
        # binding.pry
        end
      end



    # Recipe.all.each do |recipe|
    #   allergens.each do |allergen|
    #
    #     if recipe.ingredients.include?(allergen)
    #       Recipe.all.delete(recipe)
    #     end
    #   end



      # binding.pry
    end
    # arr
    # binding.pry
          # puts "The allergen #{allergen.name} is in #{recipe.name} and is not safe to eat!!!"
        # else
          # safe << recipe
    # safe.uniq
    # Recipe.all
  end

end
