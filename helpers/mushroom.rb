# Andrew Horsman

# Millipede Remake
# Mushroom Helper.

require File.expand_path(File.dirname(__FILE__) + '/../configuration')

module GameHelpers

  module Mushroom
    
    def self.colour_to_image_path(colour)
      image_string = Configuration::IMAGE_PATH + "/mushroom-#{colour.to_s}.png"
      return image_string if File.exists? image_string
      nil
    end

  end

end
