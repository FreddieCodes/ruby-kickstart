# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.78
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*array, &block)
    array.reverse.map(&block)
end

# test could use a, b, c instead of *array
# def reverse_map(a,b,c,, &block)
#   [a,b,c].reverse.map(&block)
# end

p reverse_map(7,8,9) { |i| i } # => [9, 8, 7]