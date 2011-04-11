# Andrew Horsman

# Millipede Remake
# Mushroom Object

require 'gosu'

module GameObjects

  class Mushroom

    def initialize(window, colour) 
      @window = window
      @colour = colour
      @image_path = GameHelpers::Mushroom::colour_to_image_path(@colour)
      @image  = Gosu::Image.new(@window, @image_path, false)
      @cur_x  = 0
      @cur_y  = 0
    end
    
  end

end
