puts "Put your text below:"
#text=gets.chomp
text = "In this project, we'll build a program that takes a user's input, then builds a hash from that input. Each key in the hash will be a word from the user; each value will be the number of times that word occurs. For example, if our program gets the string \"the rain in Spain falls mainly on the plain\", it will return"
puts "Put your Caesar key below:"
cesar_key=gets.chomp.to_i

letters=text.split("")  # заливаем arr символами


letters.map do |text_char| 
	
	if text_char.between?("a","z") 
	
		if (text_char.ord+cesar_key).chr > "z"
			
			(text_char.ord+cesar_key-"z".ord+("a".ord-1)).chr
			
		else
			
			(text_char.ord+cesar_key).chr
		end
			
	
elsif text_char.between?("A","Z") 

		if (text_char.ord+cesar_key).chr > "Z"
			
			(text_char.ord+cesar_key-"Z".ord+("A".ord-1)).chr
			
		else
			
			(text_char.ord+cesar_key).chr
		end
	
else
	
	text_char
	
end
	
	
end

caeser_text = letters.join
puts "Caeser skrypt of your text:"
puts caeser_text
