class Scene

	def scenes
    @@scenes = {
    'roxies_yard' => RoxiesYard.new(),
    'neighbors_yard' => NeighborsYard.new(),
    'grandma' => Grandma.new(),
    'dogwalker' => DogWalker.new(),
    'park' => Park.new(),
    'game_over' => GameOver.new(),
  }
  end

  def enter_scene()
		puts "Scene Information"
	end

	def get_user_option
		print "[Your Task#]>"
		option = $stdin.gets.chomp.to_i
	end

	def get_user_task
		tasks = ["Turn Around", "Sing a Song", "Cell Phone", "Freeze Grandma", "Jog Away"]
		@user_task = tasks
    puts "You have chosen to"
    puts @user_task[rand(0..(@user_task.length - 1))]
  end

  def user_key
    user_key = rand(1..5)
  end
  
  def get_user_guess(option, user_key)    
    self.get_user_option
    self.user_key
    guesses = 0

    while option != user_key && guesses < 3
      puts "Nope. Try again."
      guesses += 1
      self.get_user_option
    end
  end

  def user_move
    self.get_user_option
    self.user_key
    user_move = self.next_scene

    if option = user_key
      user_move
    else
      'game_over'
    end
  end
    

    
    
      if @scene = neighbor
        puts "\n"
        puts "Wise decision. He can't resist a good serenade."
        puts "He's in a trance. Music really does soothe the over-zealous neighbor."
        puts "keep going."
        'grandma'
     


      puts "User escape information."
      
  end

    if user_task == "turn around"
      puts "\n"
      puts "He saw you, and here he comes!"
      puts "Bad Choice. He'll pursue you to the ends of the earth."
      puts "You'll never make it to the park now."
      'game_over'

    elsif option == "sing a song"
      

    elsif option == "cell phone"
      puts "\n"
      puts "He really hates his cell phone. He'll ignore this call, but not Roxie."
      puts "You've got his full attention. No park for you."
      'game_over'
	end

	

	def exit_scene
		exit(1)
	end

	

	

	

	

end

scene = Scene.new()