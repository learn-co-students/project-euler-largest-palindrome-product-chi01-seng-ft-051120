# Implement your object-oriented solution here!
class LargestPalindromeProduct

    def initialize
    end 

    def answer 
        array = (100..999).to_a.reverse
        palindromes = []
        counter = 0 
        while array.length != 0
            largestnumber = array.shift()
            if (largestnumber ** 2).to_s == (largestnumber ** 2).to_s.reverse 
                palindromes.push(largestnumber ** 2)
            end 
            array.each do |number| 
                if (largestnumber * number).to_s == (largestnumber * number).to_s.reverse
                    palindromes.push(largestnumber * number)
                end 
            end 
        end 
        palindromes.max
    end 

end
