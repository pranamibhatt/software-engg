# combine anagrams into groups

require 'pp'

def
combine_anagrams(words)

# store the hash values in an array
hashmap = Hash.new{|hash, key| hash[key] = Array.new }
result = [] # result array
words.each do |string|
sorted = string.chars.sort

hashmap[sorted].push string


	  hashmap.each_value {|value| result.push(value)}
end
	pp result.uniq


end

print combine_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams','scream'] )
