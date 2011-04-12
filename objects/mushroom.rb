# Andrew Horsman

# Millipede Remake
# Mushroom Object

require 'gosu'
require File.expand_path(File.dirname(__FILE__) + '/../configuration.rb')

module GameObjects

  class Mushroom

    def initialize(window, colour, x, y) 
      @window = window
      @colour = colour
      @image_path = get_image_path
      @cur_x  = x
      @cur_y  = y

      if @image_path.nil?
        GameHelpers::Errors::throw("Could not find mushroom image sprite for colour #{colour}.", :warning)
        @colour = Configuration::DEFAULT_MUSHROOM_COLOUR
        @image_path = get_image_path
      end

      @image  = Gosu::Image.new(@window, @image_path, false)
    end

    def get_image_path
      return GameHelpers::Mushroom::colour_to_image_path(@colour)
    end   
    
  end

end
