

def caesar_cipher(text, cesar_key)
  letters=text.split("")  # заливаем arr символами

  letters.map! do |text_char|

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
	return 	caeser_text
end

puts "Put your text below:"
text=gets.chomp

puts "Put your Caesar key below:"
cesar_key=gets.chomp.to_i


puts "Caeser skrypt of your text:"
puts caesar_cipher(text, cesar_key)
