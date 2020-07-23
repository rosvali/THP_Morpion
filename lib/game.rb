class Game
	attr_accessor :players, :board

	def initialize(name1, name2)
		@players = [Player.new(name1, "X"), Player.new(name2, "O")]
		@board = Board.new
	end

#Vérifie si la case voulu n'est pas vide
	def put_in(position, player)
		@board.empty?(position) ? @board.cases[position] = player.symbole : not_empty(player)
	end

#Trouve la position dans le board
	def choose_position(position, p)
		cases = %w[A1 A2 A3 B1 B2 B3 C1 C2 C3]
		index = cases.index position
		put_in(index, p)
	end

#Condition si la case est déjà remplie
	def not_empty(player)
		print "Error: case not empty, #{player.name} choose a other one > "
		choose_position(gets.chomp, player)
	end

#Check si 3 même symbole sont alignés
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

	def show_players
		@players.each {|p| puts p.infos}
	end

	def show_score
		puts "Score total :"
		@players.each { |p| puts "#{p.name} : #{p.score}"}
	end

end