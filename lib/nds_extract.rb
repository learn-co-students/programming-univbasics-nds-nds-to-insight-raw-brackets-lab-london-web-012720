$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

index = 0

results = {}

while index < nds.length do

names =  nds[index][:name]

results[names] = 0

index2  = 0

while index2 < nds[index][:movies].length do

results[names] += nds[index][:movies][index2][:worldwide_gross]

index2 += 1

end

index += 1

end

return results

end


##puts directors_database[0][:movies][0][:worldwide_gross]
