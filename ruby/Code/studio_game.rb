name1 = "larry"
health = 60
puts "#{name1}'s' health is #{health}."
puts name1 + "'s health ist " + health.to_s

health = 60
puts "#{name1}'s' health is #{health * 3}."



health = 60

puts health.to_i.class
puts "#{name1}'s health is #{health / 9 .to_i}."

health = 60
puts health.to_f.class
puts "#{name1}'s health is #{health / 9 .to_f}."

puts "Players:\n\tlarry\n\tcurly\n\tmoe"

name2 = "curly"
name3 = "moe"

puts "Player:\n\t#{name1}\n\t#{name2}\n\t#{name3}"

