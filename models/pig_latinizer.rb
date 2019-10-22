require 'pry'

class PigLatinizer
    attr_reader :text

    def initialize(text)
      @text = text.downcase
    end

    # Pig Latin is a made-up language formed from English by transferring the 
    # initial consonant or consonant blend (for example, "ch" or "str") of each 
    # word to the end of the word along with the syllable "-ay". If the word 
    # begins with a vowel sound, then we add the sound of "way" to the end of the word" 

      def pig_latinized
        array = text.split(" ")
          array.map do |word|
            if word.start_with?(/[aeoui]/)
              word << "way"
            else
              chars = word.split(/[aeoui]/).first
              latin = word.delete(chars)
              latin << chars << "ay"
              end
            end
      end 

    def finished_sentence
      pig_latinized.join(" ")
    end

end

