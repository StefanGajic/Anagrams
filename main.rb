require_relative "lib/anagrams"

input_file = ARGV[0]

an = Anagrams.new(input_file)
an.get_anagrams.values.select { |word_values| word_values.length > 1 }.each do |result|
  puts result.join(", ")
end

