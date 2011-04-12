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
      x_tiles = GameHelpers::Map::total_mushroom_area_width / Configuration::MUSHROOM_WIDTH
      y_tiles = GameHelpers::Map::total_mushroom_area_height / Configuration::MUSHROOM_HEIGHT

      random_x_set = GameHelpers::generate_random_set(quantity, 0, x_tiles)
      random_y_set = GameHelpers::generate_random_set(quantity, 0, y_tiles)

      # There cannot be a pattern of mushrooms like this:
      #  ^
      # ^ ^
      grid = Array.new(random_x_set.length).map { |x| x = Array.new(random_x_set.length, "-") }
      random_x_set.each_with_index do |x, index|
        grid[x][random_y_set[index]] = "#"
      end

      index = 0
      until index > random_x_set.length - 1
        x = random_x_set[index]
        y = random_y_set[index]

        if (mushroom_below_left? grid, x, y) || (mushroom_below_right? grid, x, y)
          random_x_set.slice! index
          random_y_set.slice! index
        else
          index += 1
        end
      end

      random_x_set.map! { |x| x *= Configuration::MUSHROOM_WIDTH }
      random_y_set.map! { |y| y *= Configuration::MUSHROOM_HEIGHT }
      0.upto(random_x_set.length - 1) do |index|
        mushroom_set << GameObjects::Mushroom.new(window, :red, random_x_set[index], random_y_set[index])
      end
      mushroom_set
    end

    def self.mushroom_below_left?(grid, x, y)
      false unless x > 0
      grid[x - 1][y + 1] == "#"
    end
    
    def self.mushroom_below_right?(grid, x, y)
      false unless x < grid.length - 2
      grid[x + 1][y + 1] == "#"
    end

  end

end
