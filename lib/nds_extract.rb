$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  i = 0 
  results = {}
  while i < directors_database.length do
    name = directors_database[i][:name]
    m = 0
    gross = 0
    while m < directors_database[i][:movies].length do
      gross += directors_database[i][:movies][m][:worldwide_gross]
      m += 1 
    end
    results[name] =gross
    i += 1 
  end
  return results
end
