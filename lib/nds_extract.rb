$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
pp directors_database
def directors_totals(nds)
  director_index = 0 
  totals = {}
  
  while director_index < nds.length do 
    directors_name = nds[director_index][:name]
    totals[directors_name] = 0 
    movie_index = 0 
    
    while movie_index < nds[director_index][:movies].length do 
    totals[directors_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
  end 
   director_index += 1
end
totals 
end 