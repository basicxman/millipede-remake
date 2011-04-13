# Andrew Horsman
 
# Millipede Remake
# Player generator.

require 'game_objects'

module Generators

  module Players
    
    def self.newPlayer(window)
      x = Configuration::GAME_WIDTH / 2
      y = Configuration::GAME_HEIGHT - Configuration::PLAYER_AREA_HEIGHT / 2 - Configuration::Player::PLAYER_HEIGHT
      GameObjects::Player.new(window, x, y)
    end 

  end

end
