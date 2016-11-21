## Check to see if two words are anagrams of eachother

#  Stretch, check multiple agianst one word to see if any are anagrams


def multiple_anagram_check(first_string, string_array)
	anagrams = []
	string_array.each do |second_string|
		if anagram?(first_string, second_string)
			anagrams << second_string
		end
	end
	anagrams.each do |anagram|
		p anagram + " is a anagram of " + first_string
	end
	anagrams
end


def anagram?(first_word, second_word)
	sorted_first = first_word.downcase.split("").sort!
	sorted_second = second_word.downcase.split("").sort!
	i = first_word.length - 1
	while i >= 0 
		return false if sorted_first[i] != sorted_second[i]
		i = i - 1
	end
	true
end

multiple_anagram_check("moon", ["noom", "cat", "moon", "Moon", "nomo"])