# Andrew Horsman

# Millipede Remake
# Game Helpers Includes

require 'helpers/mushroom'
require 'helpers/errors'
require 'helpers/map'

module GameHelpers

  def self.generate_random_set(quantity, a, b)
    set = []
    quantity.times do 
      set << Random.new.rand(a..b)
    end
    set
  end

end
