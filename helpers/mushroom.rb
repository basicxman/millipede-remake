# Andrew Horsman

# Millipede Remake
# Mushroom Helper.

require File.expand_path(File.dirname(__FILE__) + '/../configuration')

module GameHelpers

  module Mushroom
    
    def self.colour_to_sprite_path(colour)
      sprite_string = Configuration::IMAGE_PATH + "/mushrooms/mushroom-#{colour.to_s}.png"
      return sprite_string if File.exists? sprite_string
      nil
    end

  end

end
