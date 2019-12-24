$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
nds = directors_database 
outer = 0 # the director's 
hash = {} 
  while outer < nds.length do 
    total = 0 
    inner = 0 # the specific movie, after :movies
   while inner < nds[outer][:movies].length do 
      total += nds[outer][:movies][inner][:worldwide_gross]
      inner += 1
   end 
    # add key:value pair to the hash as name: total
    hash[nds[outer][:name]] = total 
    outer += 1 
  end 
  return hash 
end
