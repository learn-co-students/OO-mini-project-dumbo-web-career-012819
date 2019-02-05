class RecipeCard
  attr_accessor :date, :rating, :user, :recipe

  @@all = []
  def initialize(date, rating, user, recipe)
    @date = date # integer eg, 20190205
    @rating = rating # integer, 5 max rating
    @user = user
    @recipe = recipe

    @@all << self
  end

  def self.all
    @@all
  end

end
