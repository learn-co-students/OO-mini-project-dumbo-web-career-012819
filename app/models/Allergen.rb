class Allergen
  attr_accessor :name, :ingredient, :user

  @@all = []

  def initialize(name, ingredient, user)
    @name = name
    @ingredient = ingredient
    @user = user

    @@all << self
  end

  def self.all
    @@all
  end

end
