require_relative "lib/anagrams"

input_file = ARGV[0]
input_word = ARGV[1]

an = Anagrams.new(input_file)
an.get_word(input_word).each do |result|
  puts result
end
