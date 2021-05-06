class PigLatinizer
    attr_accessor :text
     def initialize()
    end

    def piglatinize(text)
        arr = text.split(" ")
        return_arr = []
        
        arr.each do |word|
            letters = word.split("")
            first_letters = []
            letters.each do |l|
                self.check_for_vowel(l) ? break : first_letters << l
            end
            first_letters.count.times {letters.shift}
            first_letters.count == 0 ? return_arr << (word + "way") : return_arr << (letters.join("") + first_letters.join("") + "ay")
        end
        return_arr.join(" ")
    end

    def check_for_vowel(letter)
        !!letter.match(/^[aeiouAEIOU]$/)
    end
end