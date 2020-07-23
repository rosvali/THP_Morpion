require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/application'

print "Le nom du premier joueur > "
name1 = gets.chomp
print "Le nom du deuxième joueur > "
name2 = gets.chomp
morpion = Application.new(name1, name2)
morpion.game.show_players

morpion.show(morpion.game.board)

while (morpion.game.board.full? && morpion.game.players.each {|p| break if morpion.game.align?(p)})
	morpion.game.players.each do |pl|
		print "#{pl.name} choose a position (A1..B2..C3 etc) > "
		morpion.game.choose_position(gets.chomp, pl)
		system("clear")
		morpion.show(morpion.game.board)
		break if morpion.game.align?(pl)
	end
end
puts "Do you want to play again ? [Yes-No]"
