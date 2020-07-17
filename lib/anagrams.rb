class Anagrams

  def initialize(file)
    @file = file
    @result = {}
  end

  def read_wordlist
    if @file.is_a?(Array)
      return @file
    else
      File.read(@file).split("\n")
    end
  end

  def get_anagrams
    read_wordlist.each do |word|
      key = word.split('').sort.join
      if @result.key?(key)
        @result[key] << word
      else
        @result[key] = [word]
      end
    end
    @result.values
  end

end
