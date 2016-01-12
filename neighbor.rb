class NeighborsYard < Scene

	def enter_scene()
		puts "\n"
		puts "Roxie's neighbor, Mr. Johnson, has spotted you and he has a bag of treats for Roxie. Roxie sees him, and her tail starts to wag."
		puts "If Roxie gets a hold of that bag, she'll eat herself into a stupor and the a trip to the park will be out of the question."
		puts "There are 5 possible tasks to choose, and one of these is the key to your escape. Enter a number from 1 to 5 to see if you can go free."
		print "> "

		option = $stdin.gets.chomp
		option.downcase

		if option == "turn around"
			puts "\n"
			puts "He saw you, and here he comes!"
			puts "Bad Choice. He'll pursue you to the ends of the earth."
			puts "You'll never make it to the park now."
			'game_over'

		elsif option == "sing a song"
			puts "\n"
			puts "Wise decision. He can't resist a good serenade."
			puts "He's in a trance. Music really does soothe the over-zealous neighbor."
			puts "keep going."
			'grandma'

		elsif option == "cell phone"
			puts "\n"
			puts "He really hates his cell phone. He'll ignore this call, but not Roxie."
			puts "You've got his full attention. No park for you."
			'game_over'
		end		
	end

end