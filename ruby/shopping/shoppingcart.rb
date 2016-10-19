require 'date'

class ShoppingCart
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		total = 0
		@items.each do |item|
			total += item.price
			puts item.price
		end

		if @items.count > 5
			total *= 0.9
		end	

		total
		puts total
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end
	def price
		@price
	end
end

class Houseware < Item
	def price
		discounted_price = 0
		if @price > 100
			discounted_price = @price * 0.95
		else
			discounted_price = @price
		end
		discounted_price
	end
end

class Fruit < Item
	def price
		discounted_price = 0
		today = Date.today.wday
		if [0, 6].include?(today)
			discounted_price = @price * 0.9
		else
			discounted_price = @price
		end
		discounted_price
	end
end


banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

shop = ShoppingCart.new
shop.add_item(banana)
shop.add_item(banana)
shop.add_item(banana)
shop.add_item(banana)
shop.add_item(banana)
shop.add_item(banana)


shop.checkout