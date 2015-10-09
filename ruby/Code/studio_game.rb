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
	attr_reader :health
	attr_accessor :name

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end

	def to_s
		"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{score}"
	end

	def blam
		@health -=10
		puts "#{@name} wurde geblamt!!!"
	end
	def w00t
		@health += 10
		puts "#{@name} wurde gew00tet!!!! Aktueller Stand: #{@health}"
	end

	def score
		@health + @name.length
	end
end
player1 = Player.new('Theo', 5)
player2 = Player.new('Peter')
game = Game.new('Freitag')
game.add_player(player1)
game.play
# players = [player1, player2]

# players.each do |var|
# 	var.blam
#  	puts var
#  end

#  players.size.times do |i|
#  	puts i.to_s
#  	puts players[i]
#  end
 










































# name1 = "larry"
# health = 60
# puts "#{name1}'s' health is #{health}."
# puts name1 + "'s health ist " + health.to_s

# health = 60
# puts "#{name1}'s' health is #{health * 3}."



# health = 60

# puts health.to_i.class
# puts "#{name1}'s health is #{health / 9 .to_i}."

# health = 60
# puts health.to_f.class
# puts "#{name1}'s health is #{health / 9 .to_f}."

# puts "Players:\n\tlarry\n\tcurly\n\tmoe"

# name2 = "curly"
# name3 = "moe"

# puts "Player:\n\t#{name1}\n\t#{name2}\n\t#{name3}"

