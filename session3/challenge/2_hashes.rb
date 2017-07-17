# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(number)
    # sets to_return to a Hash
    to_return = {}
    # iterates from 1 upto the methods argument (number) # skipping all the even numbers.
    1.upto(number) do |x|  
    next if x.even?
    # creates an array call all which has a block which adds +1 to the parameter
    all   = Array.new(x) { |i| i + 1 }
    # selects only the even numbers in the array all.
    evens = all.select { |i| i.even? }
    # produces an array of all of the even numbers.
    to_return[x] = evens
end
to_return
end


#test

p staircase(9) # => {1 => [], 3 => [2], 5 => [2,4], 7 => [2,4,6], 9 => [2,4,6,8] }