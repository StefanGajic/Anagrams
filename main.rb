require_relative "lib/anagrams"

print "Enter the name of the file you want to check for anagrams? "
input_text = gets.chomp
an = Anagrams.new(input_text)
puts "Anagrams in your #{input_text} file are: "
an.to_s.each_line do |words|
  words.gsub! ", [", "\n"
  words.gsub! '[', ""
  words.gsub! ']', ""
  puts words
end
