class Application
	attr_accessor :game

	def initialize(name1, name2)
		@game = Game.new(name1, name2)
	end

#Vérifie si l'input est valide ou non
	def take_input(input, player)
		index = %w[A1 A2 A3 B1 B2 B3 C1 C2 C3].index input
		if index.nil?
			print "Error: Please #{player.name} enter a correct input (A1, B2, C3 etc) > "
			return take_input(gets.chomp, player)
		else
			@game.choose_position(input, player)
		end
	end

#Incrémente le score du gagnant
	def win(player)
		puts "Bravo #{player.name} ! Tu as gagné"
		player.score += 1
	end

#Déroulement d'une partie
	def morpion
		while (@game.board.full? && @game.players.each {|p| break if @game.align?(p)})
			@game.players.each do |pl|
				print "#{pl.name} choose a position (A1..B2..C3 etc) > "
				take_input(gets.chomp, pl)
				system("clear")
				game.board.show_board
				break if !@game.board.full?
				if @game.align?(pl)
					win(pl)
					break
				end
			end
		end
	end

#Condition pour le while, vérifie l'input
	def stillplay?(input)
		index = %w[yes no].index input
		if index.nil?
			print "J'ai pas compris.. yes ou no ? > "
			return stillplay?(gets.chomp)
		else
			index == 0 ? true : false
		end
	end

#Lance des parties de morpion en boucle
	def tournoi_morpion
		@game.show_players
		print "On commence ? [yes/no] > "
		while (stillplay?(gets.chomp))
			@game.board.clean_board
			system("clear")
			@game.board.show_board
			morpion
			@game.show_score
			print "Tu veux jouer une nouvelle partie ? [yes/no] > "
		end
	end

end