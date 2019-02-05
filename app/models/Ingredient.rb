class Ingredient
	attr_reader :name, :allergens, :recipe_ingredients

	@@all = []

	def initialize(name)
		@name= name
		@@all << self
	end

	def self.all
		@@all
	end

	# def users
	# 	allergies = Allergen.all.select do |allergen|
	# 		allergen.ingredient == self
	# 	end

	# 	allergies.map do |allergy|
	# 		allergy.user
	# 	end
	# end

	def allergens
		allergies = Allergen.all.select do |allergen|
	 		allergen.ingredient == self
	 	end
	end

	def self.most_common_allergen
		@@all.sort_by do |ingredient|
			ingredient.allergens.length
		end.last

		# @@all.map do |ingredient|
		# 	binding.pry
		# 	ingredient.sort_by do |ingredient|
		# 		ingredient.users.length
		# 	end
		# end.reverse[0]
	end
end
