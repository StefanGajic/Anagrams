require 'anagrams'

describe Anagrams do
  describe '.get_anagrams' do
    it "returns all anagrams from a file" do
      an = Anagrams.new("test.txt")
      expect(an.get_anagrams).to eql([["sundres", "undress"], ["paste", "tepas"], ["crepitus", "pictures"]])
    end

    it "returns all anagrams from an array" do
      an = Anagrams.new(["pictures", "piecrust", "refresh", "fresher"])
      expect(an.get_anagrams).to eql([["pictures", "piecrust"], ["refresh", "fresher"]])
    end
  end

end
