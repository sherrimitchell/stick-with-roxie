class DogWalker < Scene

	def enter_scene()
		puts "\n"
		puts "Oh snap. It's that annoying little Dennis from down the street. Roxie's dogwalker."
		puts "Roxie is his favorite customer. He hates to miss an appointment."
		puts "How are you going to get out of this? Enter one: Turn around, Jog Away, or Sing a Song"
		print "> "

		option = $stdin.gets.chomp
		option.downcase

		if option == "turn around"
			puts "\n"
			puts "Annoying people will not let you get away that easy."
			puts "He will follow you, wherever you go."
			puts "Annoying Dennis, 1. Going to the park, 0."
			'game_over'

		elsif option == "jog away"
			puts "\n"
			puts "Hey. Dennis can't keep up with you with all those dogs."
			puts "Are the dogs supposed to be dragging him like that? Roxie, look away."
			puts "Bye bye, Dennis. Hello park."
			'park'

		elsif option == "sing a song"
			puts "\n"
			puts "Dennis doesn't seem to like your musical choice."
			puts "Too bad he's such a hater. But, he won this round."
			puts "Looks like your day with Roxie is over."
			'game_over'
		end		
	end

end