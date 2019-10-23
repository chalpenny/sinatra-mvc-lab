require 'pry'

class PigLatinizer

    # Pig Latin is a made-up language formed from English by transferring the 
    # initial consonant or consonant blend (for example, "ch" or "str") of each 
    # word to the end of the word along with the syllable "-ay". If the word 
    # begins with a vowel sound, then we add the sound of "way" to the end of the word" 

      def piglatinize(text)
        array = text.split(" ")
          new_array = array.map do |word|
            if word.start_with?(/[aeouiAEIOU]/)
              word << "way"
            else
              beginning_of_word = word.split(/[aeoui]/).first
              end_of_word = word.slice(beginning_of_word.length..-1)
              end_of_word << beginning_of_word << "ay"
              end
            end
            new_array.join(" ")
      end 

end

