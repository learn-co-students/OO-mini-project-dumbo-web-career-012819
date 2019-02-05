class RecipeCard
  attr_accessor :name,:user, :recipe, :date, :rating, :title

  @@all = []
  def initialize(title,user,recipe,date,rating)
    @title = title
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating

    @@all << self
  end

  def self.all
    @@all
  end


end
