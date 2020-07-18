class Anagrams

  def initialize(file)
    @file = file
  end

  def read_wordlist
    if @file.is_a?(Array)
      @file
    else
      File.read(@file).encode("UTF-8", :invalid => :replace, :replace => "").split("\n")
    end
  end

  def get_anagrams
    result = {}
    read_wordlist.each do |word|
      key = word.split('').sort.join
      if result.key?(key)
        result[key] << word
      else
        result[key] = [word]
      end
    end
    result.values
  end

end
