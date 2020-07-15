require 'anagrams'

describe Anagrams do
  describe '.to_s' do
    it "returns all anagrams from a file" do
      an = Anagrams.new("test.txt")
      expect(an.get_anagrams).to eql([["sundres", "undress"], ["paste", "tepas"], ["crepitus", "pictures"]])
    end
  end

end
