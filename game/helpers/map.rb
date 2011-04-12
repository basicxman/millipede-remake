# Andrew Horsman

# Millipede Remake
# Map helpers.

module GameHelpers

  module Map
    
    def self.total_mushroom_area_width
      Configuration::GAME_WIDTH - Configuration::MUSHROOM_WIDTH
    end

    def self.total_mushroom_area_height
      Configuration::GAME_HEIGHT - Configuration::PLAYER_AREA_HEIGHT - Configuration::MUSHROOM_HEIGHT
    end

  end

end
