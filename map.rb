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

  def initialize(start_scene)
    @start_scene = start_scene

  end

  def start_scene
    @start_scene = @@scenes.to_a
  end


  def next_scene(scene_name)
    @next_scene = @@scenes[scene_name]
    @next_scene
  end

  def opening_scene()
    next_scene(@start_scene)
  end

end