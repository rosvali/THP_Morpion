class Player
	attr_accessor :name, :symbole

	def initialize(name, symbole)
		@name = name
		@symbole = symbole
	end

	def infos
		"Le joueur #{@name} utilise le symbole #{@symbole}"
	end

end