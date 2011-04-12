# Andrew Horsman

# Millipede Remake
# Game Helpers Includes

require File.expand_path(File.dirname(__FILE__) + '/mushroom')
require File.expand_path(File.dirname(__FILE__) + '/errors')
require File.expand_path(File.dirname(__FILE__) + '/map')

module GameHelpers

  def self.generate_random_set(quantity, a, b)
    set = []
    quantity.times do 
      set << Random.new.rand(a..b)
    end
    set
  end

end
