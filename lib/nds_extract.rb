$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
outer_index = 0

array_name = []
array_value =[]
result =Hash.new

 while outer_index < directors_database.length do
          total = 0
          inner_index = 0
         while inner_index < directors_database[outer_index][:movies].length do
                total += directors_database[outer_index][:movies][inner_index][:worldwide_gross]

           inner_index += 1

       end
array_name << directors_database[outer_index][:name]
array_value << total

outer_index += 1

end
index3 =0





while index3 < array_name.length do



result["#{array_name[index3]}"] = array_value[index3]





index3 += 1
end

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #

  # Be sure to return the result at the end!
puts array_name
puts array_value
 result
end
