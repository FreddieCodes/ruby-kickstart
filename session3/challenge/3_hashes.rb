# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(string)
    words_count = Hash.new { |words, count| words[count] = 0}
    string.downcase.split.each { |x| words_count[x] += 1 }
    words_count
end

#test 
p word_count("Hello the REST REST REST REST hi the") # => {"hello" => 1, "the" => 2, "rest" => 4, "hi" => 1}