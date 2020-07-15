class Anagrams
  RESULT = {}

  def initialize(filename)
    @filename = filename
  end

  def read
    File.open(@filename).read.split("\n")
  end

  def get_anagrams
    read.each do |word|
      key = word.split('').sort.join
      if RESULT.key?(key)
        RESULT[key].push(word)
      else
        RESULT[key] = [word]
      end
    end
    RESULT.values
  end

  def to_s
    get_anagrams.to_s.delete_prefix("[").delete_suffix("]")
  end

end 
