class Ingredient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # return ingredient instance
  # an allergen has multiple users
  def self.most_common_allergen
    ingredient_allergen = Hash.new(0)
    ingredient_arr = Allergen.all.map { |allergen| allergen.ingredient }
    # count amount of times each ingredient appear in Allergen.all
    ingredient_arr.each do |v|
      ingredient_allergen[v] += 1
    end
    # return highest key value pair base on v
    (ingredient_allergen.max_by { |k,v| v })[0]
  end
end
