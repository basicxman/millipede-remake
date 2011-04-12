#!/usr/bin/env ruby

# Andrew Horsman

# Millipede Remake
# Main game file.

require 'helpers/game_helpers'
require 'game_objects'
require 'configuration'
require 'pre_game'
require 'generators'

class GameWindow < Gosu::Window

  def initialize
    super(Configuration::GAME_WIDTH, Configuration::GAME_HEIGHT, false)

    self.caption = "Millipede Remake"

    @objects_to_update = []
    @objects_to_draw   = []

    @objects_to_draw += Generators::Mushrooms::scatteredMushrooms(self, 80)
  end

  def update
    @objects_to_update.each do |obj|
      begin
        obj.update!
      rescue
        GameHelpers::Errors::throw("Could not update object #{obj.inspect}", :warning)
      end
    end
  end

  def draw
    @objects_to_draw.each do |obj|
      begin
        obj.draw
      rescue
        GameHelpers::Errors::throw("Could not draw object #{obj.draw}", :warning)
      end
    end 
  end

end

pre_game = PreGame.new

if pre_game.success?
  window = GameWindow.new
  window.show
else
  abort "Pre game loading failed."
end
