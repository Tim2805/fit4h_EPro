# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
zahl = (15..20).to_a
# a. geben Sie diese Zahlen in einem Block aus
zahl.each do |i|
	puts i.to_s
end
puts"\n"
# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
zahl.size.times do	|i|
 	puts "Index: #{i.to_s} Wert: #{zahl[i]}"
 end
 puts "\n"

 zahl.each_with_index do |i,i2|
	puts "Index: #{i2} - Wert: #{i}"
end
puts "\n"
# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
zahl.size.times do |i|
zahl2 = Hash[zahl[i], rand(100..200)]  
end
puts"\n"

my_hash = Hash.new
zahl.each do |val|
	my_hash[val] = rand(100..200)
end
puts my_hash
puts "\n"
# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
zahl.size.times do |i|
zahl2 = Hash["a" => zahl[i], "b" =>rand(100..200)];
puts "Index: #{zahl2['a']} - Wert: #{zahl2['b']}"
end
puts "\n"

my_hash.each do |myKey, myVal|
	puts "Index: #{myKey} - Wert: #{myVal}"
end
puts "\n"
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
zahl.size.times do |i|
zahl2 = Hash["a" => zahl[i], "b" =>rand(100..200)];
if zahl2['b'] > 150
   puts "Index: #{zahl2['a']} - Wert: #{zahl2['b']}. WOW"
else
   puts "Index: #{zahl2['a']} - Wert: #{zahl2['b']}"
end
end
puts "\n"

my_hash.each do |myKey, myVal|
	if myVal >150
		puts "Index: #{myKey} - Wert #{myVal}. WOW" 
	else
		puts "Index: #{myKey} - Wert #{myVal}"
	end
end    
puts "\n"
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
sec_array = Array.new
zahl.each do |val|
	sec_array << val * val
end
puts sec_array
puts "\n"
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
sec_hash = Hash.new
zahl.each do |i|
	sec_hash[i] = i * i
end
puts sec_hash
puts "\n"





# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
primzahlen = [1,2,3,5,7,9,11,13,17,19,23]
primzahlen.each do |p|
	if p < 10
		puts "#{p} ist einstellig"
	else
		puts "#{p} ist zweistellig"
end
end
puts "\n"

words = ["leer", "Ein", "Zwei"]
10.times do |var3|
	puts "#{primzahlen[var3]} ist #{words[primzahlen[var3].to_s.length]} stellig"
end
# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt

personen = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
personen.each do |key,val|
puts "#{key.capitalize}: #{val}\n"
end
puts "\n"
# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'
prims = Hash.new
primzahlen.each do |p|
	prims[p] = p.to_s.length < 2 ? " ist einstellig" : " ist zweistellig"


end
puts prims




# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..



# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

personenx = Array.new
personen1 = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
personen2 = {vorname: "Tim", nachname: "Gruener", stadt: "Norderstedt"}
personen3 = {vorname: "Daniel", nachname: "Leonhardt", stadt: "Dorf"}
personenx << personen1.to_a
personenx << personen2.to_a
personenx << personen3.to_a
y=1
personenx.size.times do |x|
puts "#{y}. Person\n"
puts "vorname: #{personenx[x][0][1]}\nNachname: #{personenx[x][1][1]}\nStadt: #{personenx[x][2][1]}"
y=y+1
end
puts "\n"



# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
#array = ["Pflaume", "Bauschaum", "Auster"]
liste = %w(Pflaume Bauschaum Auster)
# b. Alle Element, die den String "aus" enthalten sollen ausgegeben werden.
var = liste.select do |a|
	a.downcase.include?("aus") 
	#a.include?("aus") || a.include?("Aus")
end
puts var
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
sortiert = liste.sort_by do |a|
		a.length
end
puts sortiert

# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert
myHash = Hash.new
liste.each do |l|
	myHash[l] = l.length
end
puts myHash
# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
lotto = []
7.times do
	z = rand(1..49)
	while lotto.include?(z)
		z = rand(1..49)
	end
	lotto << z
end
puts lotto.sort

#puts lotto2 = (1..49).to_a.sample(7).sort
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}
lotto_hash = Hash.new
%w(Peter Paul Mary).each do |vname|
	lotto_hash[vname] = (1..49).to_a.sample(7).sort
end

puts lotto_hash
# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}
