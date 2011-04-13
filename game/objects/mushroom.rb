# Andrew Horsman

# Millipede Remake
# Mushroom Object

require 'gosu'
require 'configuration'

module GameObjects

  class Mushroom

    def initialize(window, colour, x, y) 
      @window = window
      @colour = colour
      @sprite_path = get_sprite_path
      @cur_x  = x
      @cur_y  = y
      @cur_z  = Configuration::ZIndex::Mushroom
      @cur_health = Configuration::Mushroom::STARTING_MUSHROOM_HEALTH

      if @sprite_path.nil?
        GameHelpers::Errors::throw("Could not find mushroom sprite sprite for colour #{colour}.", :warning)
        @colour = Configuration::Mushroom::DEFAULT_MUSHROOM_COLOUR
        @sprite_path = get_sprite_path
      end

      @object = Gosu::Image.new(@window, @sprite_path, false)
    end

    def get_sprite_path
      return GameHelpers::Mushroom::colour_to_sprite_path(@colour)
    end   

    def draw
      @object.draw(@cur_x, @cur_y, @cur_z)
    end
    
  end

end
