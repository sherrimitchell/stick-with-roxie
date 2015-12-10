class Scene

	def enter_scene()
		puts "Scene Information"
		exit(1)
	end

end

scene = Scene.new()

class Game

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('theend')

    while current_scene != last_scene
      next_scene_name = current_scene.enter_scene()
      current_scene = @scene_map.next_scene(next_scene_name)
  end
    current_scene
  end

end

class GameOver

	def enter_scene()
		puts "Noooooooo!!!! You let them get you."
		puts "Too bad. It's the end of the road for you."
		exit(1)
	end

end

class RoxiesYard < Scene

	def enter_scene()
		puts "Today is your time to play with Roxie."
		puts "Her favorite game is Hide the Stick, and she is ready to have fun."
		puts "\n"
		puts "The two of you are going to the park, where there is lot's of room to run around."
		puts "There's a couple of people that will try and distract Roxie along the way: the neighbor Mr. Johnson, her owner's mom a.k.a Roxie's Grandma, and Carlton-the neighborhood dog walker."
		puts "\n"
		puts "There are anti-distraction weapons available to you as you meet each person. Choose wisely, and you'll defeat the distractions and make it to the park."
		'neighbors_yard'
	end

end

class NeighborsYard < Scene

	def enter_scene()
		puts "\n"
		puts "Roxie's neighbor, Mr. Johnson, has spotted you and he has a bag of treats for Roxie. Roxie sees him, and her tail starts to wag."
		puts "If Roxie gets a hold of that bag, she'll eat herself into a stupor and the a trip to the park will be out of the question."
		puts "You've got a couple of choices: Turn Around, Sing a Song, or send a call to his Cell Phone"
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

class Park < Scene

	def enter_scene()
		puts "\n"
		puts "Wooohoooooooooooooo!!!!"
		puts "You made it to the park."
		puts "It's time for you and Roxie to have some fun."
		puts "Enjoy!!!!"

		puts "\n"
		puts "You are the winner! Good work!"	
	end
end


class Map

	@@scenes = {
    'roxies_yard' => RoxiesYard.new(),
    'neighbors_yard' => NeighborsYard.new(),
    'grandma' => Grandma.new(),
    'dogwalker' => DogWalker.new(),
    'park' => Park.new(),
    'game_over' => GameOver.new(),
  }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    val
  end

  def opening_scene()
    next_scene(@start_scene)
  end

end

a_map = Map.new('roxies_yard')
a_game = Game.new(a_map)
a_game.play()

