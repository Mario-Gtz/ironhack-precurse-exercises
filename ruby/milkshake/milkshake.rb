class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Milkshake
	def initialize
		@ingredients = [ ]
		@base_price = 3
	end
	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end
	def price_of_milkshake
		total_price = @base_price
		@ingredients.each do |ingredient|
			total_price += ingredient.price
		end
		total_price
	end
end

class Shop
	def initialize
		@milkshakes = [ ]
		@price_sum = 0
	end
	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end
	def total_sum_price
		total_sum = @price_sum
		@milkshakes.each do |mprice|
			total_sum += mprice.price_of_milkshake
		end
		total_sum
	end
end

mario_milkshake = Milkshake.new
nizars_milkshake = Milkshake.new

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
caramel = Ingredient.new("caramel", 3)

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

mario_milkshake.add_ingredient(caramel)
mario_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake
puts mario_milkshake.price_of_milkshake

shop = Shop.new
shop.add_milkshake(mario_milkshake)
shop.add_milkshake(nizars_milkshake)
puts shop.total_sum_price