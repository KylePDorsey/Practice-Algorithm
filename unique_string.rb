## Check to see if the characters within a string are unique


def unique?(string)
	used_characters = {}
	i = string.length - 1
	while i >= 0
		return false if used_characters[string[i]] != nil
		used_characters.merge!(string[i] => i.to_s)
		i = i - 1
	end
	return true
end

p unique?("Kzylez")