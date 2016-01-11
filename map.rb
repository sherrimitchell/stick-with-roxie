$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'pry'

require 'stick-with-roxie/scene'
require 'stick-with-roxie/roxies_yard'
require 'stick-with-roxie/neighbors_yard'
require 'stick-with-roxie/grandma'
require 'stick-with-roxie/dogwalker'
require 'stick-with-roxie/park'
require 'stick-with-roxie/game_over'

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