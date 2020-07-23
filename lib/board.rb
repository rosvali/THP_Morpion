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

	def compare(i1, i2, i3)
		tmp = [@cases[i1], @cases[i2], @cases[i3]]
	end
end