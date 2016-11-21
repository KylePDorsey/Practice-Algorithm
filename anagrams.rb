## Check to see if two words are anagrams of eachother

#  Stretch, check multiple agianst one word to see if any are anagrams

def anagram?(first_word, second_word)
	return false if first_word.length != second_word.length
	sorted_first = first_word.split("").sort!
	sorted_second = second_word.split("").sort!
	i = first_word.length - 1
	while i >= 0 
		return false if sorted_first[i] != sorted_second[i]
		i = i - 1
	end
	true
end

p anagram?("kyle", "ezyk")