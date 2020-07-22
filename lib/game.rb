class Game
	attr_accessor :players, :board

	def initialize(name1, name2)
		@players = [Player.new(name1, "X"), Player.new(name2, "O")]
		@board = Board.new
	end

	def show_players
		@players.each {|p| puts p.infos}
	end

	def put_in(position, player)
		@board.cases[position] = player.symbole
	end
end