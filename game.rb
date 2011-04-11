#!/usr/bin/env ruby

# Andrew Horsman

# Millipede Remake
# Main game file.

require File.expand_path(File.dirname(__FILE__) + "/helpers/game_helpers")
require File.expand_path(File.dirname(__FILE__) + "/game_objects")
require File.expand_path(File.dirname(__FILE__) + "/configuration")

class GameWindow < Gosu::Window

  def initialize
    super(Configuration::GAME_WIDTH, Configuration::GAME_HEIGHT, false)

    self.caption = "Millipede Remake"
  end

  def draw

  end

end

window = GameWindow.new
window.show
