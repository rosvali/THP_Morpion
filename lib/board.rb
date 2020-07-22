class Board
	attr_accessor :cases

	def initialize
		@cases = (0..8).map { |c| c = " "}
	end

	def full?
		@cases.include?(" ")
	end
end