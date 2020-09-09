def largest_palindrome_product
    best = 0
    (100..999).to_a.each { |i| 
        (100..999).to_a.each { |j| 
            if is_palindrome(i * j) && i * j > best
                best = i * j
            end
        }
    }
    best
end

def is_palindrome(num)
    num = num.to_s
    if num[0] != num[-1]
        return false
    elsif num.length > 2
        return is_palindrome(num[1...-1])
    else
        return true
    end
end