class Board
	attr_accessor :cases

	def initialize
		@cases = (0..8).map { |c| c = " "}
	end

	def full?
		@cases.include?(" ")
	end

	def empty?(position)
		@cases[position].include?(" ")
	end

#Créer un array de 3 éléments utilisé dans > Game/align?
	def compare(i1, i2, i3)
		tmp = [@cases[i1], @cases[i2], @cases[i3]]
	end

#Clean le plateau entre 2 parties
	def clean_board
		@cases.map! { |c| c = " "}
	end

#Affiche le tableau
	def show_board
		puts "   |   |   "
		puts " #{@cases[0]} | #{@cases[1]} | #{@cases[2]} "
		puts "___|___|___"
		puts "   |   |   "
		puts " #{@cases[3]} | #{@cases[4]} | #{@cases[5]} "
		puts "___|___|___"
		puts "   |   |   "
		puts " #{@cases[6]} | #{@cases[7]} | #{@cases[8]} "
		puts "   |   |   "
	end

end