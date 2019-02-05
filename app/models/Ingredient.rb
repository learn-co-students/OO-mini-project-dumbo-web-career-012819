class Ingredient
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    Allergen.all.max_by {|allergen| Allergen.all.count(allergen.user)}
  end
end
