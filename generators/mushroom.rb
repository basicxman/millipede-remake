# Andrew Horsman

# Millipede Remake
# Generates sets of Mushrooms.

require File.expand_path(File.dirname(__FILE__) + "/../configuration")
require File.expand_path(File.dirname(__FILE__) + "/../helpers/game_helpers")
require File.expand_path(File.dirname(__FILE__) + "/../game_objects.rb")

module Generators
  
  module Mushrooms

    def self.scatteredMushrooms(window, quantity)
      mushroom_set = []
      x_tiles = GameHelpers::Map::total_mushroom_area_width / 20
      y_tiles = GameHelpers::Map::total_mushroom_area_height / 20

      random_x_set = GameHelpers::generate_random_set(quantity, 0, x_tiles).map { |x| x *= 20 }
      random_y_set = GameHelpers::generate_random_set(quantity, 0, y_tiles).map { |y| y *= 20 }

      0.upto(quantity - 1) do |index|
        mushroom_set << GameObjects::Mushroom.new(window, :red, random_x_set[index], random_y_set[index])
      end

      mushroom_set
    end

  end

end
