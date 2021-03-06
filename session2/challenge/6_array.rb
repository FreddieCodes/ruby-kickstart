# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(letters)
    string_length =  letters.join.length
    prime_check = Math.sqrt(string_length)
    return false if string_length < 2
    (2..prime_check.to_i).each { |n| return false if string_length % n == 0 }
    true   
end

# tests
p prime_chars? ["abc"]
p prime_chars? ["a"]
p prime_chars? ["a" , "b", "cd"]