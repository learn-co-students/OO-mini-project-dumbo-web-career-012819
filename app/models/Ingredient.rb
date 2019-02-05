require 'pry'

class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def users_with_allergens
    allergens.collect do |allergen|
      allergen.user
    end
  end

  def self.most_common_allergen
    self.all.sort_by do |ingredient|
      ingredient.users_with_allergens.length
    end[-1]
  end

end
