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
		@board.empty?(position) ? @board.cases[position] = player.symbole : not_empty(player)
	end

	def choose_position(position, p)
		case position
		when "A1" then put_in(0, p)
		when "A2" then put_in(1, p)
		when "A3" then put_in(2, p)
		when "B1" then put_in(3, p)
		when "B2" then put_in(4, p)
		when "B3" then put_in(5, p)
		when "C1" then put_in(6, p)
		when "C2" then put_in(7, p)
		when "C3" then put_in(8, p)
		end
	end

	def not_empty(player)
		print "Error: case not empty, #{player.name} choose a other one > "
		choose_position(gets.chomp, player)
	end

	def align?(player)
		tmp = (0..2).map {|c| c = player.symbole}
		return true if @board.compare(0, 1, 2).eql?(tmp)
		return true if @board.compare(3, 4, 5).eql?(tmp)
		return true if @board.compare(6, 7, 8).eql?(tmp)
		return true if @board.compare(0, 3, 6).eql?(tmp)
		return true if @board.compare(1, 4, 7).eql?(tmp)
		return true if @board.compare(2, 5, 8).eql?(tmp)
		return true if @board.compare(0, 4, 8).eql?(tmp)
		return true if @board.compare(2, 4, 6).eql?(tmp)
		false
	end

end