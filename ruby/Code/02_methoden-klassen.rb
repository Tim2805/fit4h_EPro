#a. definieren Sie eine Methode say_hello mit dem Argument name. Das Ergebnis des Aufrufs ist dann die Ausgabe: 'Ich bin Ludwig'

def say_hello(name)
 	"Ich bin #{name}"
end
puts say_hello("Ludwig")

 #b. rufen Sie die Methode mit verschiedenen namen auf

def say_hello(name)
	puts "Ich bin #{name}"
end

say_hello("Ludwig")
say_hello("Wilhelm")

# c. puts soll nun aus der Methode entfernt werden

def say_hello(name)
	"Ich bin #{name}"
end

puts say_hello("Ludwig2")

#d. aendern sie die Methode, so dass sie einen Statndarparmameter health entgegennimmt. Die Ausgabe lautet dann: 'Ich bin Ludwig mit einem Wert von 100'

def say_hello(name, health = 100)
	"Ich bin #{name} mit einem Wert von #{health}"
end

puts say_hello("Ludwig")

#e. definieren Sie eine Methode time, die in der Methode say_hello aufgerufen wird und die Ausgabe folgendermaßen ergaenzt: 'Ich bin Ludwig mit einem Wert von 100 um 18:25'

def say_hello(name, health = 100)
	"Ich bin #{name} mit einem Wert von #{health} um #{time}"
end

def time
	Time.new.strftime("%R")
end
puts say_hello("Ludwig")





class Player
 		def initialize(pname, phealth = 100)
 			@name = pname
 			@health = phealth
 		end

 		def to_s
 			"Ich bin #{@name} mit einem Wert von #{@health}"
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

 player1 = Player.new("Ludwig", 110)
 #puts player1.say_hello
 player2 = Player.new("Wilhelm")
 #puts player2.say_hello
 puts player2.blam
 puts player1
 puts player2