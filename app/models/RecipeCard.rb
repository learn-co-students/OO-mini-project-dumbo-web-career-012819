class RecipeCard
  attr_accessor :name, :date, :rating, :recipe, :user

  @@all = []

  def initialize(name, date, rating, recipe, user)
    @name = name
    @date = date
    @rating = rating
    @recipe = recipe
    @user = user

    @@all << self
  end

  def self.all
    @@all
  end

end
