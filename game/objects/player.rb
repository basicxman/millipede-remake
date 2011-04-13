# Andrew Horsman

# Millipede Remake
# Player Object.

require 'gosu'
require 'configuration'

module GameObjects

  class Player
    
    def initialize(window, x, y)
      @window = window
      @sprite_path = Configuration::Player::DEFAULT_SPRITE_PATH
      @cur_x = x
      @cur_y = y
      @cur_z = Configuration::ZIndex::Player

      @object = Gosu::Image.new(@window, @sprite_path, false)
    end

    def draw
      @object.draw(@cur_x, @cur_y, @cur_z)
    end

  end

end
