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
  #
  # `Ingredient.most_common_allergen`
  # should return the ingredient instance that the highest number of users are allergic to
  def self.most_common_allergen
    self.all.max_by do |ingredient|
      ingredient.allergic_users.count
    end
  end

  def allergic_users #this was created as a helper method so that it can be called in the .most_common_allergen
    Allergen.all.select do |allergy|
      allergy.ingredient == self
    end.map do |allergy|
      allergy.user
    end
  end

end
