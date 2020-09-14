# Implement your procedural solution here!
def largest_palindrome_product
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

# def largest_palindrome_product
#     array = (100..999).to_a.reverse
#     counter = 0 
#     answer = nil
#     while answer == nil
#         test1 = array[counter] ** 2
#         if test1.to_s == test1.to_s.reverse 
#             answer = test1 
#         end 
#         test2 = array[counter] * array[counter + 1]
#         if test2.to_s == test2.to_s.reverse
#             answer = test2 
#         end 
#         counter += 1 
#     end 
#     answer
# end