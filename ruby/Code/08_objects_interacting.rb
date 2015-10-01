# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
# b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:
# 	There are 3 players in Knuckleheads: 
# 	I'm Moe with a health of 100 and a score of 103.
# 	I'm Larry with a health of 60 and a score of 65.
# 	I'm Curly with a health of 125 and a score of 130.
# 	Moe got blammed!
# 	Moe got w00ted!
# 	Moe got w00ted!
# 	I'm Moe with a health of 120 and a score of 123.
# 	Larry got blammed!
# 	Larry got w00ted!
# 	Larry got w00ted!
# 	I'm Larry with a health of 80 and a score of 85.
# 	Curly got blammed!
# 	Curly got w00ted!
# 	Curly got w00ted!
# 	I'm Curly with a health of 145 and a score of 150.
class Game
	def initialize(title)
		@title = title
		@player = []
	end

	def add_player(neu)
		@player << neu
		
	end

	def play
		puts "#{@title}'s Game"
		@player.each do |neu|
			puts neu.to_s
		end
		@player.each do |aua|
			puts aua.blam
			puts aua.w00t
			puts aua.w00t
			puts aua.to_s
	end
end

end





class Player
 		def initialize(pname, phealth = 100)
 			@name = pname
 			@health = phealth
 			@score = @health+@name.length
 		end

 
 		def to_s
 			"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{@score}"
 		end

 		def blam
 			@health -= 10
 			"#{@name} wurde geblamt"
 		end

 		def w00t
 			@health -= 10
 			"#{@name} got w00ted"
 		end
 		
 end

	player1=Player.new("Tim",100)
	player2=Player.new("Marvin",60)
	player3=Player.new("Daniel",125)
	nummer1 = Game.new("CD")
	nummer1.add_player(player1)
	nummer1.add_player(player2)
	nummer1.add_player(player3)
	nummer1.play
	




