class Recipe
	attr_reader :name, :recipe_card, :recipe_ingredient
	attr_writer :ingredients

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def users 
		recipe_cards = RecipeCard.all.select do |recipe_card|
			recipe_card.recipe == self 
		end

		recipe_cards.map do |recipe_card|
			recipe_card.user
		end
	end

	def ingredients 
		recipe_ingredients = RecipeIngredient.all.select do |recipe_ingredient|
			recipe_ingredient.recipe == self
		end

		recipe_ingredients.map do |recipe_ingredient|
			recipe_ingredient.ingredient
		end
	end

	def add_ingredients(ingredient_array)
		@ingredients = @ingredients.concat(ingredient_array)
	end
	def self.most_popular 
		@@all.sort_by do |recipe|
			recipe.users.length
		end.reverse[0]
	end

	def allergens 
		ingredients.select do |ingredient|
			ingredient.allergens != []
		end
	end
end