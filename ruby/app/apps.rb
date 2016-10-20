class App

	attr_accessor :name
	attr_accessor :author
	attr_accessor :score

	def initialize(name, author, score)
		@name = name
		@author = author
		@score = score
	end

	def description
		puts "#{@author} has developed \"#{@name}\" for iOS and he has got #{@score} points"
	end

	def evaluation
		coolness_score = @score
		if
			coolness_score < 5
			coolness_score = "poor"
		elsif
			coolness_score > 4 && coolness_score < 7
			coolness_score = "good"
		elsif
			coolness_score > 6 && coolness_score < 10
			coolness_score = "very cool"
		else
			coolness_score = 10
			coolness_score = "awesome"
		end
		coolness_score
		if coolness_score == "awesome"
			puts "#{@author} has developed \"#{@name}\" for iOS and he has made an #{coolness_score} application"			
		else
			puts "#{@author} has developed \"#{@name}\" for iOS and he has made a #{coolness_score} application"
		end
	end

	def compare(other)
		if
			@score > other.score
			puts "\"#{@name}\" is better than \"#{other.name}\""
			@name
		elsif
			@score < other.score
			puts "\"#{other.name}\" is better than \"#{@name}\""
			other.name
		else
			puts "\"#{other.name}\" is as good as \"#{@name}\""
			@name && other.name
		end
	end
end

richard_app = App.new("Apple Pie", "Rick", 10)
peter_app = App.new("Smashing Crack", "Pete", 9)

richard_app.description
richard_app.evaluation
puts richard_app.score
richard_app.compare(peter_app)