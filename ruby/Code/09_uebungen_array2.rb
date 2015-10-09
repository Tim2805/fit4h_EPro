
# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
#array = ["Pflaume", "Bauschaum", "Auster"]
# b. Alle Element, die den String "aus" enthalten sollen ausgegeben werden.
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

liste = %w(Pflaume Bauschaum Auster)
var = liste.select do |a|
	a.downcase.include?("aus")
end
puts var

var2 = liste.sort_by do |a|
	a.length
end
puts var2

myhash=Hash.new
liste.each do |l|
	myhash[l]=l.length
end
puts myhash