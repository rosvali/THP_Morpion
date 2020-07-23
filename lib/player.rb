class Player
	attr_accessor :name, :symbole, :score

	def initialize(name, symbole)
		@name = name
		@symbole = symbole
		@score = 0
	end

	def infos
		"Le joueur #{@name} joue avec le symbole #{@symbole}"
	end

end