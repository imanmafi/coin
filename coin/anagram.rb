# #def anagrams(words)
# #anagrams ={}
# words.each do |word|
#   anagrams[word.downcase.split]
#   anagrams[word.downcase.split]
#   end
#   anagrams.values
#   end
#
#
#   array = ['cars','for', 'potatoes', 'scar'].array.group_by{|element|element.downcase.chars.sort}.values



  class Anagram
    def result_array(input_array)
      output_array  = input_array.group_by  {|input| input.chars.sort}
      return output_array.values
    end
  end
