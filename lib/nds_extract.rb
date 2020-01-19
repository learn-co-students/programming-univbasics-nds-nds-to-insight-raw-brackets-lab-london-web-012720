$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Remember, it's always OK to pretty print what you get *in* to make sure
# that you know what you're starting with!
#
#
# The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

def directors_totals(nds)
name_i = 0
names = ""
insert_name = ""
result = {
}

      while name_i < nds.length do
      insert_name = nds[name_i][:name]

            second_count = 0
            each_total = 0
            while second_count < nds[name_i][:movies].length do
                each_total += nds[name_i][:movies][second_count][:worldwide_gross]
                second_count += 1
            end

            name_i +=1
result[insert_name] = each_total
      end

pp result
  return result
end

#
# Use loops, variables and the accessing method, [], to loop through the NDS
# and total up all the

# Be sure to return the result at the end!
