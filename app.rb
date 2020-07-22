require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/board'

# print "Le nom du premier joueur > "
# name1 = gets.chomp
# print "Le nom du deuxième joueur > "
# name2 = gets.chomp
morpion = Game.new("player1", "player2")
morpion.show_players

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

show(morpion.board)

while (morpion.board.full?)
	morpion.players.each do |s|
		print "#{s.name} choose a position (A1..B2..C3 etc) > "
		case gets.chomp
		when "A1" then morpion.put_in(0, s)
		when "A2" then morpion.put_in(1, s)
		when "A3" then morpion.put_in(2, s)
		when "B1" then morpion.put_in(3, s)
		when "B2" then morpion.put_in(4, s)
		when "B3" then morpion.put_in(5, s)
		when "C1" then morpion.put_in(6, s)
		when "C2" then morpion.put_in(7, s)
		when "C3" then morpion.put_in(8, s)
		end
		show(morpion.board)
	end
end