
class PigLatinizer
    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end

    #Pig Latin is a made-up language formed from English by transferring the initial consonant or consonant blend (for example, "ch" or "str") of each word to the end of the word along with the syllable "-ay". If the word begins with a vowel sound, then we add the sound of "way" to the end of the word.
    def pig_latinized
 
def latinized(text)
    array = text.downcase.split(" ")
      array.map do |word|
        if word.start_with?(/[aeoui]/)
          word << "yay"
        else
          check = word.chars
          check.each do |letter|
            if letter == "a" #(/[aeoui]/)
            puts "no"
            #puts index
            #delete up to that index, save into a variable
            #<< that var onto the end of what's left
            #<< "ay" on to the end of that
            else
            puts word
            end
          end
        end
      end
    
    

end
