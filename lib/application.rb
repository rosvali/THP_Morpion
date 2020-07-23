class Application
	attr_accessor :game

	def initialize(name1, name2)
		@game = Game.new(name1, name2)
	end

	def show(b)
		puts "   |   |   "
		puts " #{b.cases[0]} | #{b.cases[1]} | #{b.cases[2]} "
		puts "___|___|___"
		puts "   |   |   "
		puts " #{b.cases[3]} | #{b.cases[4]} | #{b.cases[5]} "
		puts "___|___|___"
		puts "   |   |   "
		puts " #{b.cases[6]} | #{b.cases[7]} | #{b.cases[8]} "
		puts "   |   |   "
	end

end