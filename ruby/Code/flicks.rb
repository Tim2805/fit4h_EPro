class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end
	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			puts movie
		end
	end
	def to_s
		@movies.size.to_s
	end

end

class Movie
		attr_accessor :title
		def initialize(ptitle, prank=0)
			@title = ptitle.capitalize
			@rank = prank
		end
		def thumbs_up
			@rank += 1
		end
		def thumbs_dowm
			@rank -= 1
		end
		def to_s
			"#{@title} hat ein Ranking von: #{@rank}."
		end
	end

movie1 = Movie.new('NinjaTurtels',4)
movie2 = Movie.new('45 years',8)
movie3 = Movie.new('8 mm',10)
pl = Playlist.new("Tim")
pl.add_movie(movie1)
pl.add_movie(movie2)
pl.play






# movies = [movie1, movie2, movie3]
# movies.each do |movie|
# 		movie.thumbs_up
# 		movie.thumbs_dowm
# 		puts movie
# end











































# class Movie
# 	#attr_writer :title
# 	#attr_reder :title
# 	attr_accessor :title
# 	def initialize(ptitle, prank=0)
# 	@title = ptitle.capitalize
# 	@rank = prank
# 	end

# 	# def title
# 	# 	@title
# 	# end
# 	attr_reader:title

# 	# def title=(ptitle)
# 	# 	@title = ptitle
# 	# end

# 	attr_writer:title
# 	def thumbs_up
# 			@rank += 1
# 			#@rank = @rank + 1
# 	end
# 	def thumbs_down
# 			@rank -= 1
# 	end
# 	def to_s
# 		"#{@title} hat ein Ranking von: #{@rank}."
# 	end

# end

# movie1 = Movie.new('Ninja Turtles',4)
# puts movie1.to_s
# movie1.thumbs_up
# puts movie1.to_s

# puts movie1.title

# movie1.title ="ninjaPurples"
# puts movie1

















#Klicks version 2 (Beipsiel mit 2 Methoden)
# def movie_listing(title,rank=10)
# 		"Movie: #{title.downcase.capitalize} hat #{weekday} das Ranking #{rank}"

# end

# def weekday
#  Time.now.strftime("%A")
# end

# puts movie_listing("Ninja Turtles",4)
# puts movie_listing("SWAT",5)










#Flicks version 1 (Beipsiel für Variablen innerhalb von Methoden)
# def movie_listing
# 	var= "Movie: Ninja Turtles"
# 	puts "var innerhalb Methode: #{var.object_id}"
# 	var2 = "Movie: irgendeinen Film"
# 	"#{var}\n#{var2}"
# end

# var = movie_listing
# puts "var ausserhalb : #{var.object_id}"
# puts "Rückgabewert #{var}"