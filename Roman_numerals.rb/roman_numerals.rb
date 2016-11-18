## Create a program that will convert integers into the correct Roman Numerals

# First Old Roman Numerals 
# Second New Roman Numerals

# OLD ROMAN NUMERALS
# 1	    I
# 5	    V
# 10	X
# 50	L
# 100	C
# 500	D
# 1000	M

# NEW ROMAN NUMERALS
# 4	    IV
# 9	    IX
# 14	XIV
# 44	XLIV
# 99	XCIX
# 400	CD
# 944	CMXLIV


#Start with the largest possible number to remove and break it down futher and futher

def convert_to_roman(arabic_number, roman_style = {})
	roman = []
	remaining_integer = arabic_number
	modern = roman_style[:modern]
	loop do 
		break if remaining_integer == 0
		if remaining_integer >= 1000
			roman.push("M")
			remaining_integer -= 1000
		elsif remaining_integer >= 500
			roman.push("D")
			remaining_integer -= 500	
		elsif remaining_integer >= 100
			roman.push("C")
			remaining_integer -= 100
		elsif remaining_integer >= 50
			roman.push("L")
			remaining_integer -= 50
		elsif remaining_integer >= 10
			roman.push("X")
			remaining_integer -= 10
		elsif remaining_integer >= 5
			roman.push("V")
			remaining_integer -= 5
		elsif remaining_integer >= 1
			roman.push("I")
			remaining_integer -= 1
		end
	end
	roman = roman.join
	if modern
		return modern_format(roman)
	end
	roman
end


def modern_format(old_roman_string)
	old_roman_string.gsub!("DCCCC", "CM")
	old_roman_string.gsub!("CCCC", "CD")
	old_roman_string.gsub!("LXXXX", "XC")
	old_roman_string.gsub!("XXXX", "XL")
	old_roman_string.gsub!("VIIII", "IX")
	old_roman_string.gsub!("IIII", "IV")
	old_roman_string
end















