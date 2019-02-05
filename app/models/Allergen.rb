class Allergen
  attr_accessor :name, :user
  @@all = []
  def initialize(name, user)
    @name = name
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

end
