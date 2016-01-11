class Grandma < Scene

	def enter_scene()
		puts "\n"
		puts "Well, there's Roxie's Grandma, and she's ready to shop."
		puts "Who wants a new outfit? Hmmm, not Roxie."
		puts "Let's see how you get out of this one. Enter one: Freeze Grandma, send a call to her Cell Phone, or Jog Away"
		print "> "

		option = $stdin.gets.chomp
		option.downcase

		if option == "freeze"
			puts "\n"
			puts "Guess who has just happens to have her special cardigan? Ha ha."
			puts "Didn't your Momma tell you never to try and freeze Grandma?"
			puts "Oh well. Tell Roxie goodbye. She'll see you later."
			'game_over'

		elsif option == "jog away"
			puts "\n"
			puts "Oops. Guess you didn't know that Grandma is a beast."
			puts "Oh man. Did she really just tell you to get out of here with that weak jog?"
			puts "How nice of her to pick you and Roxie up and keep running. Maybe she'll find a nice Thundershirt for you too."
			'game_over'

		elsif option == "cell phone"
			
			puts "\n"
			puts "Hello. Can you hear me?"
			puts "Yep. She heard you. It's her sister on the line. She'll be awhile."
			puts "Proceed. You are free to move on."
			'dogwalker'
		end		
	end

end