require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/application'

puts "_" * 37
puts "| Bienvenue sur mon jeu de Morpion ! |"
puts "_" * 37
puts "Consignes : aligne 3 symbole dans n'importe quel sens pour gagner !"

print "Le nom du premier joueur > "
name1 = gets.chomp
print "Le nom du deuxième joueur > "
name2 = gets.chomp

morpion = Application.new(name1, name2)

morpion.tournoi_morpion
