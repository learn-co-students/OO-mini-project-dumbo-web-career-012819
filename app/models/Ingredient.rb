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
      def  self.most_common_allergen
    run = Allergen.all.map do |n|
      n.name
          end
        v = run.sort_by { |n|
      run.count(n)
          }
    v.pop
  end
  end
