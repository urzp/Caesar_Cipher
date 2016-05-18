puts "Put your text below:"
text=gets.chomp
puts "Put your Caesar key below:"
cesar_key=gets.chomp.to_i

letters=text.split("")  # заливаем arr символами