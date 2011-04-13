# Andrew Horsman

# Millipede Remake
# Game Configuration

module Configuration

  DEBUG_MODE = true

  IMAGE_PATH = "./images"

  GAME_WIDTH  = 600
  GAME_HEIGHT = 900

  PLAYER_AREA_HEIGHT = 150

  LOG_FILE = "./logs/global_log.log"
  NOTICE_LOG_FILE = "./logs/notice_log.log"
  WARNING_LOG_FILE = "./logs/warning_log.log"
  ERROR_LOG_FILE = "./logs/error_log.log"

  module ZIndex
    Mushroom = 1
  end 

  module Mushroom
    DEFAULT_MUSHROOM_COLOUR = :red
    MUSHROOM_WIDTH = 20
    MUSHROOM_HEIGHT = 20
    STARTING_MUSHROOM_HEALTH = 5
  end

end
