puts "Put your text below:"
#text=gets.chomp
text = "In this project, we'll build a program that takes a user's input, then builds a hash from that input. Each key in the hash will be a word from the user; each value will be the number of times that word occurs. For example, if our program gets the string \"the rain in Spain falls mainly on the plain\", it will return"
puts "Put your Caesar key below:"
cesar_key=gets.chomp.to_i

letters=text.split("")  # заливаем arr символами


letters.each do |c| 
	
#puts c if c.ord.between?(97,122)
puts c if c.ord.between?(65,90)
	
end
