class User 
	attr_reader :name, :recipe_card, :allergens

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all 
		@@all
	end

	def recipes 
		recipe_cards = RecipeCard.all.select do |recipe_card|
			recipe_card.user == self
		end

		recipe_cards.map do |recipe_card|
			recipe_card.recipe
		end
	end

	def add_recipe_card(date, rating, recipe)
		RecipeCard.new(date, rating, self, recipe)
	end

	def allergens
		allergies = Allergen.all.select do |allergen|
			allergen.user == self
		end

		allergies.map do |allergy|
			allergy.ingredient
		end
	end

	def declare_allergen(ingredient) 
		adding_allergen = Allergen.new(self, ingredient)
	end

	def top_three_recipces
		recipe_cards = RecipeCard.all.select do |recipe_card|
			recipe_card.user == self
		end

		recipe_cards.sort_by do |recipe_card|
			recipe_card.rating
		end.reverse[0..2]
	end

	def most_recent_recipe
		recipes.last
	end

	def safe_recipes
		unsafe_recipes ||= []
		safe_recipes ||= []
		Recipe.all.each do |recipe|
			self.allergens.each do |allergen|
				if recipe.allergens.include?(allergen)
					unsafe_recipes << recipe
				end
			end
		end

		Recipe.all.each do |recipe|
			if !unsafe_recipes.include?(recipe)
				safe_recipes << recipe
			end
		end

		safe_recipes
	end
end 
