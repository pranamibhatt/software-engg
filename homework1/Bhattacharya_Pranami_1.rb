# this program checks whether the given string is a palindrome


def palindrome?(string)
	char_string = string.downcase.gsub(/\W/, '')
	char_string == char_string.reverse()
end	

if palindrome?("A man, a plan, a canal -- Panama")
	puts "true"
else
	puts "false"
end

if palindrome?("abracadabra")
	puts "true"
else
	puts "false"
end

if palindrome?("Madam, I'm Adam!")  
	puts "true"
else
	puts "false"
end
