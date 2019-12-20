$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pp"


def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  for director in directors_database
    result[director[:name]] = 0
    director[:movies].each { |movie|
      result[director[:name]] += movie[:worldwide_gross]
    }
  end
  # Be sure to return the result at the end!
  return result
end
