$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'pry'

require 'stick-with-roxie/scene'
require 'stick-with-roxie/roxies_yard'
require 'stick-with-roxie/neighbors_yard'
require 'stick-with-roxie/grandma'
require 'stick-with-roxie/dogwalker'
require 'stick-with-roxie/park'
require 'stick-with-roxie/game_over'

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


a_map = Map.new('roxies_yard')
a_game = Game.new(a_map)
a_game.play()