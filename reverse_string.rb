## Rever a string
## 
#Input "Hello"
#Output "olleH"


# Hello
# oellH
# olleH

def reverse(string)
	reversed_string = ""
	i = string.length.to_i - 1
	while i >= 0
		reversed_string <<string[i]
		i = i - 1
	end
	reversed_string
end


p rev = reverse("hello")