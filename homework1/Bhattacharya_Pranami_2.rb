=begin
given a string of inputs, return a hash that uses the word as the key and the 
number of times of occurence as the value
=end

require 'pp'

def count_words(string)
	hash_map = {}
	string.downcase.scan(/\w+/).each do |string|
	# add to hashmap, increment count if new entry
	if hash_map.has_key?string
		hash_map.store(string, hash_map.fetch(string)+1)
	else
		hash_map.store(string, 1)
	end
	end
	pp(hash_map)
end

# test cases
count_words "Doo bee doo bee doo"
count_words "A man, a plan, a canal -- Panama"
